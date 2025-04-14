import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/requests/outlet_request_model.dart';
import 'package:flutter_jago_pos_app/presentation/outlet/bloc/outlet/outlet_bloc.dart';

class AddOutletPage extends StatefulWidget {
  const AddOutletPage({super.key});

  @override
  State<AddOutletPage> createState() => _AddOutletPageState();
}

class _AddOutletPageState extends State<AddOutletPage> {
  final _formKey = GlobalKey<FormState>();
  final _outletNameController = TextEditingController();
  final _outletAddressController = TextEditingController();
  final _outletPhoneController = TextEditingController();
  final _outletDescController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Outlet',
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Deskripsi Outlet tidak boleh kosong';
                    }
                    return null;
                  },
                  textCapitalization: TextCapitalization.sentences,
                  textInputAction: TextInputAction.done,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: BlocConsumer<OutletBloc, OutletState>(
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
                            content: Text('Outlet berhasil ditambahkan',
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
                            minimumSize: const Size(double.infinity, 50),
                            backgroundColor: AppColors.primary,
                          ),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              final authData =
                                  await AuthLocalDatasource().getUserData();
                              final businessId = authData?.data?.businessId;
                              final data = OutletRequestModel(
                                name: _outletNameController.text,
                                address: _outletAddressController.text,
                                phone: _outletPhoneController.text,
                                description: _outletDescController.text,
                                businessId: businessId!,
                              );

                              context.read<OutletBloc>().add(
                                    OutletEvent.addOutlet(data),
                                  );
                            }
                          },
                          child: const Text(
                            'Simpan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        );
                      },
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
