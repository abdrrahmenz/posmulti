import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/presentation/home/widgets/drawer_widget.dart';
import 'package:flutter_jago_pos_app/presentation/printer/bloc/printer/printer_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/printer/pages/add_printer_page.dart';
import 'package:flutter_jago_pos_app/presentation/printer/pages/detail_printer_page.dart';

class PrinterPage extends StatefulWidget {
  const PrinterPage({super.key});

  @override
  State<PrinterPage> createState() => _PrinterPageState();
}

class _PrinterPageState extends State<PrinterPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  initState() {
    context.read<PrinterBloc>().add(const PrinterEvent.getPrinters());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Printers',
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
      body: BlocBuilder<PrinterBloc, PrinterState>(
        builder: (context, state) {
          return state.maybeWhen(orElse: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, loaded: (data) {
            return ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: data.length,
              itemBuilder: (context, index) {
                if (data.isEmpty) {
                  return const Center(
                    child: Text('No data'),
                  );
                }
                return Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.print),
                      title: Text(data[index].name),
                      subtitle: Text(data[index].connectionType),
                      trailing: data[index].isDefault
                          ? Icon(
                              Icons.check_circle,
                              color: AppColors.primary,
                            )
                          : Icon(
                              Icons.check_circle_outline,
                              color: AppColors.grey,
                            ),
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailPrinterPage(data: data[index]);
                      })),
                    ),
                    Divider(),
                  ],
                );
              },
            );
          });
          // return ListView(
          //   padding: EdgeInsets.all(16),
          //   children: [
          //     ListTile(
          //       leading: Icon(Icons.print),
          //       title: Text("Eppos 202 - Kasir"),
          //       subtitle: Text("Connected"),
          //       trailing: Icon(Icons.check_circle, color: AppColors.primary),
          //     ),
          //   ],
          // );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const AddPrinterPage();
          }));
        },
        child: Icon(Icons.add, color: AppColors.white),
      ),
    );
  }
}
