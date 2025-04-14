import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/requests/business_setting_request_model.dart';
import 'package:flutter_jago_pos_app/presentation/tax_discount/bloc/business_setting/business_setting_bloc.dart';

class AddTaxPage extends StatefulWidget {
  const AddTaxPage({super.key});

  @override
  State<AddTaxPage> createState() => _AddTaxPageState();
}

class _AddTaxPageState extends State<AddTaxPage> {
  //form key
  final _formKey = GlobalKey<FormState>();


  //controller
  final TextEditingController nameController = TextEditingController();
  //value
  final TextEditingController valueController = TextEditingController();

  String chargeType = 'tax';

  List<String> chargeTypeList = ['tax', 'discount'];

  String type = 'percentage';

  List<String> typeList = ['percentage', 'fixed'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Settings',
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Nama',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: chargeType,
                decoration: const InputDecoration(
                  labelText: 'Tipe Adjusment',
                ),
                items: chargeTypeList
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    chargeType = value!;
                  });
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: type,
                decoration: const InputDecoration(
                  labelText: 'Tipe Value',
                ),
                items: typeList
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    type = value!;
                  });
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: valueController,
                decoration: const InputDecoration(
                  labelText: 'Nilai',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nilai tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32),
              BlocConsumer<BusinessSettingBloc, BusinessSettingState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    loaded: (_) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Berhasil menambahkan setting',
                              style: TextStyle(color: AppColors.white)),
                          backgroundColor: AppColors.primary,
                        ),
                      );
                    },
                    error: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                          backgroundColor: AppColors.error,
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
                            final authData =
                                await AuthLocalDatasource().getUserData();
                            //add tax
                            final data = BusinessSettingRequestModel(
                              nameController.text,
                              chargeType,
                              type,
                              valueController.text,
                              authData!.data!.businessId!,
                              null
                            );

                            context.read<BusinessSettingBloc>().add(
                                  BusinessSettingEvent.addBusinessSetting(data),
                                );
                          }
                        },
                        child: const Text('Tambah',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700)),
                      );
                    },
                    loading: () {
                      return Center(child: const CircularProgressIndicator());
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
