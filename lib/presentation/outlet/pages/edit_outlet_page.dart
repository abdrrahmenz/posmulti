import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/core/extensions/build_context_ext.dart';
import 'package:flutter_jago_pos_app/data/models/requests/outlet_request_model.dart';

import 'package:flutter_jago_pos_app/data/models/responses/me_response_model.dart';
import 'package:flutter_jago_pos_app/presentation/outlet/bloc/outlet/outlet_bloc.dart';

class EditOutletPage extends StatefulWidget {
  final Outlet outlet;
  const EditOutletPage({
    super.key,
    required this.outlet,
  });

  @override
  State<EditOutletPage> createState() => _EditOutletPageState();
}

class _EditOutletPageState extends State<EditOutletPage> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //controller
  final _outletNameController = TextEditingController();
  final _outletAddressController = TextEditingController();
  final _outletPhoneController = TextEditingController();
  final _outletDescController = TextEditingController();

  //init state
  @override
  void initState() {
    _outletNameController.text = widget.outlet.name ?? '';
    _outletAddressController.text = widget.outlet.address ?? '';
    _outletPhoneController.text = widget.outlet.phone ?? '';
    _outletDescController.text = widget.outlet.description ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Outlet',
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
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  controller: _outletNameController,
                  decoration: const InputDecoration(
                    labelText: 'Nama Outlet',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama Outlet tidak boleh kosong';
                    }
                    return null;
                  },
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  controller: _outletAddressController,
                  decoration: const InputDecoration(
                    labelText: 'Alamat Outlet',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Alamat Outlet tidak boleh kosong';
                    }
                    return null;
                  },
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  controller: _outletPhoneController,
                  decoration: const InputDecoration(
                    labelText: 'Nomor Telepon',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nomor Telepon tidak boleh kosong';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  controller: _outletDescController,
                  decoration: const InputDecoration(
                    labelText: 'Deskripsi Outlet',
                  ),
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.done,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      //update outlet
                      OutletRequestModel data = OutletRequestModel(
                        name: _outletNameController.text,
                        address: _outletAddressController.text,
                        phone: _outletPhoneController.text,
                        description: _outletDescController.text,
                        businessId: widget.outlet.businessId ?? 0,
                      );

                      context.read<OutletBloc>().add(
                            OutletEvent.editOutlet(
                              data,
                              widget.outlet.id ?? 0,
                            ),
                          );
                      context.pop();
                      context.pop();
                    }
                  },
                  child: const Text('Simpan',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
