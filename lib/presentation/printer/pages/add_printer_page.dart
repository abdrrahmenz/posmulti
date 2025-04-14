import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/components/spaces.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/core/extensions/build_context_ext.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/requests/printer_request_model.dart';
import 'package:flutter_jago_pos_app/presentation/printer/bloc/printer/printer_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/printer/pages/dialog_search_printer.dart';

class AddPrinterPage extends StatefulWidget {
  const AddPrinterPage({super.key});

  @override
  State<AddPrinterPage> createState() => _AddPrinterPageState();
}

class _AddPrinterPageState extends State<AddPrinterPage> {
  //keyform
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  //connection type
  String _connectionType = 'Bluetooth';

  List<String> _connectionTypes = ['Bluetooth', 'Ethernet', 'USB'];

  final TextEditingController _ipAddressController = TextEditingController();
  final TextEditingController _macAddressController = TextEditingController();
  //paper size
  int _paperWidth = 58;

  bool _isDefault = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Printer',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'Nama Printer',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama Printer tidak boleh kosong';
                    }
                    return null;
                  },
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                ),
                const SpaceHeight(16),
                DropdownButtonFormField<String>(
                  value: _connectionType,
                  decoration: const InputDecoration(
                    labelText: 'Tipe Koneksi',
                  ),
                  items: _connectionTypes
                      .map((String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ))
                      .toList(),
                  onChanged: (String? value) {
                    setState(() {
                      _connectionType = value!;
                    });
                  },
                ),
                const SpaceHeight(16),
                if (_connectionType == 'Ethernet')
                  TextFormField(
                    controller: _ipAddressController,
                    decoration: const InputDecoration(
                      labelText: 'IP Address',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'IP Address tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                if (_connectionType == 'Ethernet') const SpaceHeight(16),
                if (_connectionType == 'Bluetooth')
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: TextFormField(
                          controller: _macAddressController,
                          decoration: const InputDecoration(
                            labelText: 'Bluetooth printer',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'MAC Address tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SpaceWidth(16),
                      Expanded(
                        flex: 2,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(),
                          onPressed: () async {
                            //scan bluetooth show dialog
                            await showDialog(
                                context: context,
                                builder: (context) {
                                  return DialogSearchPrinter(onSelected: (mac) {
                                    _macAddressController.text = mac;
                                  });
                                });
                            setState(() {});
                          },
                          child: const Text(
                            'Scan',
                            style: TextStyle(color: AppColors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                const SpaceHeight(16),
                DropdownButtonFormField<int>(
                  value: _paperWidth,
                  decoration: const InputDecoration(
                    labelText: 'Ukuran Kertas',
                  ),
                  items: [58, 80]
                      .map((int value) => DropdownMenuItem<int>(
                            value: value,
                            child: Text('$value mm'),
                          ))
                      .toList(),
                  onChanged: (int? value) {
                    setState(() {
                      _paperWidth = value!;
                    });
                  },
                ),
                const SpaceHeight(16),
                Row(
                  children: [
                    Checkbox(
                      value: _isDefault,
                      onChanged: (bool? value) {
                        setState(() {
                          _isDefault = value!;
                        });
                      },
                    ),
                    const Text('Printer Default'),
                  ],
                ),
                const SpaceHeight(16),
                BlocConsumer<PrinterBloc, PrinterState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      error: (message) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message,
                                style: const TextStyle(color: Colors.white)),
                            backgroundColor: AppColors.error,
                          ),
                        );
                      },
                      loaded: (data) {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Printer berhasil ditambahkan',
                                style: TextStyle(color: Colors.white)),
                            backgroundColor: AppColors.primary,
                          ),
                        );
                      },
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            minimumSize: const Size(double.infinity, 44),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              final outletData =
                                  await AuthLocalDatasource().getOutletData();
                              final data = PrinterModel(
                                name: _nameController.text,
                                connectionType: _connectionType,
                                ipAddress: _ipAddressController.text,
                                macAddress: _macAddressController.text,
                                paperWidth: _paperWidth,
                                outletId: outletData.id!,
                                isDefault: _isDefault,
                              );

                              context
                                  .read<PrinterBloc>()
                                  .add(PrinterEvent.addPrinter(data));
                            }
                          },
                          child: const Text('Simpan',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)),
                        );
                      },
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
