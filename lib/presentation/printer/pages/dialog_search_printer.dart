import 'package:flutter/material.dart';
import 'package:flutter_jago_pos_app/core/extensions/build_context_ext.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';

import 'package:flutter_jago_pos_app/core/constants/colors.dart';

class DialogSearchPrinter extends StatefulWidget {
  final Function(String) onSelected;
  const DialogSearchPrinter({
    super.key,
    required this.onSelected,
  });

  @override
  State<DialogSearchPrinter> createState() => _DialogSearchPrinterState();
}

class _DialogSearchPrinterState extends State<DialogSearchPrinter> {
  String macName = '';
  String? macConnected;

  bool connected = false;
  List<BluetoothInfo> items = [];

  Future<void> getBluetoots() async {
    setState(() {
      items = [];
    });
    if (!mounted) return;
    // final bool result = await PrintBluetoothThermal.bluetoothEnabled;

    // var status2 = await Permission.bluetoothScan.status;
    // if (status2.isDenied) {
    //   await Permission.bluetoothScan.request();
    // }
    // var status = await Permission.bluetoothConnect.status;
    // if (status.isDenied) {
    //   await Permission.bluetoothConnect.request();
    // }
    if (await Permission.bluetooth.isDenied) {
      await Permission.bluetooth.request();
    }

    if (await Permission.bluetoothScan.isDenied) {
      await Permission.bluetoothScan.request();
    }

    if (await Permission.bluetoothConnect.isDenied) {
      await Permission.bluetoothConnect.request();
    }

    if (await Permission.nearbyWifiDevices.isDenied) {
      await Permission.nearbyWifiDevices.request();
    }

    final List<BluetoothInfo> listResult =
        await PrintBluetoothThermal.pairedBluetooths;

    setState(() {
      items = listResult;
    });
  }

  Future<void> connect(String mac) async {
    final bool result =
        await PrintBluetoothThermal.connect(macPrinterAddress: mac);
    if (result) {
      widget.onSelected(mac);
    }

    // AuthLocalDatasource().savePrinter(mac);
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //     content: Text('Printer connected with Name $mac'),
    //     backgroundColor: AppColors.primary,
    //   ),
    // );
  }

  @override
  void initState() {
    getBluetoots();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Search Printer'),
      content: items.isEmpty
          ? const Center(
              child: Text('No Printer Found'),
            )
          : Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.grey),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(items[index].name),
                      subtitle: Text(items[index].macAdress),
                      onTap: () {
                        connect(items[index].macAdress);
                        widget.onSelected(items[index].macAdress);
                        Navigator.of(context).pop();
                      },
                    ),
                  );
                },
              ),
            ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
