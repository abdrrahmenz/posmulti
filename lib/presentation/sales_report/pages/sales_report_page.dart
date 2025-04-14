import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/components/spaces.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/core/extensions/int_ext.dart';
import 'package:flutter_jago_pos_app/core/extensions/string_ext.dart';
import 'package:flutter_jago_pos_app/core/utils/helper_pdf_service.dart';
import 'package:flutter_jago_pos_app/core/utils/permession.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/responses/sales_report_response_model.dart';
import 'package:flutter_jago_pos_app/presentation/home/widgets/drawer_widget.dart';
import 'package:flutter_jago_pos_app/presentation/sales_report/bloc/sales_report/sales_report_bloc.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:permission_handler/permission_handler.dart';

import '../widgets/sales_invoice_widget.dart';

class SalesReportPage extends StatefulWidget {
  const SalesReportPage({super.key});

  @override
  State<SalesReportPage> createState() => _SalesReportPageState();
}

class _SalesReportPageState extends State<SalesReportPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  DateTime selectedDate = DateTime.now();
  SalesReportResponseModel? salesReport;
  @override
  void initState() {
    final now = DateFormat('yyyy-MM-dd').format(selectedDate);
    context.read<SalesReportBloc>().add(SalesReportEvent.getSalesReport(now));
    PermessionHelper().checkPermissionStorege();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Sales Report',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu, color: AppColors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(2010),
                lastDate: DateTime.now(),
              ).then((value) {
                if (value != null) {
                  setState(() {
                    selectedDate = value;
                  });
                  final date = DateFormat('yyyy-MM-dd').format(value);
                  context
                      .read<SalesReportBloc>()
                      .add(SalesReportEvent.getSalesReport(date));
                }
              });
            },
            icon: Icon(Icons.calendar_month, color: AppColors.white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "Sales Summary",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 50,
                              child: GestureDetector(
                                onTap: () async {
                                  final outlet = await AuthLocalDatasource()
                                      .getOutletData();
                                  if (salesReport != null) {
                                    final date = DateFormat('yyyy-MM-dd')
                                        .format(selectedDate);
                                    final status = await PermessionHelper()
                                        .checkPermissionStorege();
                                    if (status.isGranted) {
                                      final pdfFile =
                                          await SalesInvoiceWidget.generate(
                                        date,
                                        salesReport!,
                                        outlet,
                                      );
                                      HelperPdfService.openFile(pdfFile);
                                    }
                                  }
                                },
                                child: Icon(Icons.download,
                                    color: AppColors.primary),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          DateFormat('dd MMMM yyyy').format(selectedDate),
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    Divider(),
                    BlocBuilder<SalesReportBloc, SalesReportState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loaded: (data) {
                            salesReport = data;
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    salesIndicator(
                                        "Receipts",
                                        data.totalRecipts.toString(),
                                        '+50',
                                        Colors.orange,
                                        40),
                                    salesIndicator(
                                        "Net Sales",
                                        data.totalSales.currencyFormatRpV2,
                                        '+40',
                                        Colors.green,
                                        40),
                                    salesIndicator(
                                        "Average Sale",
                                        data.averageSales.currencyFormatRpV2,
                                        '+40',
                                        Colors.blue,
                                        40),
                                  ],
                                ),
                                SpaceHeight(16),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    salesIndicator(
                                        "Total Sales",
                                        data.totalPrice.currencyFormatRpV2,
                                        '+40',
                                        Colors.blue,
                                        40),
                                    salesIndicator(
                                        "Total Cost",
                                        data.totalCost.currencyFormatRpV2,
                                        '+50',
                                        Colors.orange,
                                        40),
                                    salesIndicator(
                                        "Profit",
                                        data.totalProfit.currencyFormatRpV2,
                                        '+40',
                                        Colors.green,
                                        40),
                                  ],
                                )
                              ],
                            );
                          },
                          loading: () {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          orElse: () {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                salesIndicator("Receipts", "0", "-100%",
                                    Colors.orange, 40),
                                salesIndicator("Net Sales", "Rp0", "-100%",
                                    Colors.green, 50),
                                salesIndicator("Average Sale", "Rp0", "-100%",
                                    Colors.blue, 40),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: BlocBuilder<SalesReportBloc, SalesReportState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: (data) {
                      return ListView.builder(
                        itemCount: data.sales.length,
                        itemBuilder: (context, index) {
                          final item = data.sales[index];
                          return Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${item.orderNumber}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Total Sales: ${item.totalPrice!.currencyFormatRpV3}",
                                    style: TextStyle(fontSize: 14),
                                  ),

                                  // salesChart(),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    loading: () {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    orElse: () {
                      return SizedBox();
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget salesIndicator(String title, String value, String percentage,
      Color color, double radius) {
    return Column(
      children: [
        CircularPercentIndicator(
          radius: radius,
          lineWidth: 6.0,
          percent: 0.0, // Sesuai persentase
          center: Text(value,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          progressColor: color,
          backgroundColor: color.withOpacity(0.2),
        ),
        SizedBox(height: 8),
        Text(title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        // Text(percentage, style: TextStyle(fontSize: 12, color: color)),
      ],
    );
  }

  Widget salesChart() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            gridData: FlGridData(show: true),
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                getTitlesWidget: (value, meta) {
                  return Text("Rp${value.toInt()}");
                },
              )),
              bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 20,
                getTitlesWidget: (value, meta) {
                  return Text("${value.toInt()}:00");
                },
              )),
            ),
            borderData: FlBorderData(show: true),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 0),
                  FlSpot(10, 0),
                  FlSpot(20, 0)
                ], // Data kosong
                isCurved: true,
                color: Colors.blue,
                barWidth: 3,
                isStrokeCapRound: true,
                belowBarData: BarAreaData(show: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
