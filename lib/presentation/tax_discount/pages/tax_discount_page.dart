import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/core/extensions/string_ext.dart';
import 'package:flutter_jago_pos_app/presentation/home/widgets/drawer_widget.dart';
import 'package:flutter_jago_pos_app/presentation/tax_discount/bloc/business_setting/business_setting_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/tax_discount/pages/add_tax_page.dart';
import 'package:flutter_jago_pos_app/presentation/tax_discount/pages/detail_tax_page.dart';

class TaxDiscountPage extends StatefulWidget {
  const TaxDiscountPage({super.key});

  @override
  State<TaxDiscountPage> createState() => _TaxDiscountPageState();
}

class _TaxDiscountPageState extends State<TaxDiscountPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    context
        .read<BusinessSettingBloc>()
        .add(const BusinessSettingEvent.getBusinessSetting());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Tax & Discount',
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
            icon: Icon(Icons.menu, color: AppColors.white)),
      ),
      body: BlocBuilder<BusinessSettingBloc, BusinessSettingState>(
        builder: (context, state) {
          return state.maybeWhen(orElse: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, loaded: (data) {
            if (data.isEmpty) {
              return const Center(
                child: Text('Data Kosong'),
              );
            }
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppColors.primary,
                        child: Icon(
                          data[index].chargeType == 'tax'
                              ? Icons.percent
                              : Icons.discount,
                          color: AppColors.white,
                        ),
                      ),
                      title: Text(
                        data[index].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(data[index].type == 'percentage'
                          ? '${data[index].value}%'
                          : data[index].value.currencyFormatRp),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.black,
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailTaxPage(
                            businessSetting: data[index],
                          );
                        }));
                      },
                    ),
                    const Divider(),
                  ],
                );
              },
            );
          });
          // return ListView(
          //   padding: EdgeInsets.all(16),
          //   children: [
          //     ListTile(
          //       leading: CircleAvatar(
          //         backgroundColor: AppColors.primary,
          //         child: Icon(Icons.percent, color: AppColors.white),
          //       ),
          //       title: Text("Pajak Restaurant",
          //           style: TextStyle(fontWeight: FontWeight.bold)),
          //       subtitle: Text("10%"),
          //       trailing: Icon(Icons.arrow_forward_ios, color: AppColors.black),
          //     ),
          //     Divider(),
          //     ListTile(
          //       leading: CircleAvatar(
          //         backgroundColor: AppColors.primary,
          //         child: Icon(Icons.discount, color: AppColors.white),
          //       ),
          //       title: Text("Diskon 15%",
          //           style: TextStyle(fontWeight: FontWeight.bold)),
          //       subtitle: Text("15%"),
          //       trailing: Icon(Icons.arrow_forward_ios, color: AppColors.black),
          //     ),
          //     Divider(),
          //   ],
          // );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddTaxPage();
          }));
        },
        child: Icon(Icons.add, color: AppColors.white),
      ),
    );
  }
}
