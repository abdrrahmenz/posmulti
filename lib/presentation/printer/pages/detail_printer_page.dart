import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/core/extensions/build_context_ext.dart';

import 'package:flutter_jago_pos_app/data/models/requests/printer_request_model.dart';
import 'package:flutter_jago_pos_app/presentation/printer/bloc/printer/printer_bloc.dart';

class DetailPrinterPage extends StatefulWidget {
  final PrinterModel data;
  const DetailPrinterPage({
    super.key,
    required this.data,
  });

  @override
  State<DetailPrinterPage> createState() => _DetailPrinterPageState();
}

class _DetailPrinterPageState extends State<DetailPrinterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Printer',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            title: const Text('Nama Printer'),
            subtitle: Text(widget.data.name),
          ),
          ListTile(
            title: const Text('Connection Type'),
            subtitle: Text(widget.data.connectionType),
          ),
          ListTile(
            title: const Text('Ukurang Kertas'),
            subtitle: Text('${widget.data.paperWidth}mm'),
          ),
          ListTile(
            title: const Text('Default Printer'),
            subtitle: Text(widget.data.isDefault ? 'Ya' : 'Tidak'),
          ),
          widget.data.macAddress == null
              ? Container()
              : ListTile(
                  title: const Text('Mac Address'),
                  subtitle: Text(widget.data.macAddress ?? ''),
                ),
          widget.data.ipAddress == null
              ? Container()
              : ListTile(
                  title: const Text('IP Address'),
                  subtitle: Text(widget.data.ipAddress ?? ''),
                ),
          SizedBox(height: 16),
          //edit button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.red,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              context
                  .read<PrinterBloc>()
                  .add(PrinterEvent.deletePrinter(widget.data.id ?? 0));
                  context.showSnackBar('Printer berhasil dihapus', AppColors.primary);
              context.pop();
            },
            child: const Text('Delete',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          ),
        ],
      ),
    );
  }
}
