import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/core/extensions/build_context_ext.dart';

import 'package:flutter_jago_pos_app/data/models/requests/business_setting_request_model.dart';
import 'package:flutter_jago_pos_app/data/models/responses/me_response_model.dart';
import 'package:flutter_jago_pos_app/presentation/tax_discount/bloc/business_setting/business_setting_bloc.dart';

class EditTaxPage extends StatefulWidget {
  final BusinessSettingRequestModel data;
  const EditTaxPage({
    super.key,
    required this.data,
  });

  @override
  State<EditTaxPage> createState() => _EditTaxPageState();
}

class _EditTaxPageState extends State<EditTaxPage> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //controller
  final TextEditingController _taxNameController = TextEditingController();
  final TextEditingController _taxValueController = TextEditingController();

  String chargeType = 'tax';

  List<String> chargeTypeList = ['tax', 'discount'];

  String type = 'percentage';

  List<String> typeList = ['percentage', 'fixed'];

  @override
  void initState() {
    _taxNameController.text = widget.data.name;
    _taxValueController.text = widget.data.value.toString();
    chargeType = widget.data.chargeType;
    type = widget.data.type;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit',
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
              //name
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  controller: _taxNameController,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    hintText: 'Name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                ),
              ),
              //charge type
              Padding(
                padding: const EdgeInsets.all(16),
                child: DropdownButtonFormField<String>(
                  value: chargeType,
                  decoration: const InputDecoration(
                    labelText: 'Charge Type',
                    hintText: 'Charge Type',
                  ),
                  items: chargeTypeList
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      chargeType = value ?? 'tax';
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select charge type';
                    }
                    return null;
                  },
                ),
              ),
              //type
              Padding(
                padding: const EdgeInsets.all(16),
                child: DropdownButtonFormField<String>(
                  value: type,
                  decoration: const InputDecoration(
                    labelText: 'Type',
                    hintText: 'Type',
                  ),
                  items: typeList
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      type = value ?? 'percentage';
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select type';
                    }
                    return null;
                  },
                ),
              ),
              //value
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  controller: _taxValueController,
                  decoration: const InputDecoration(
                    labelText: 'Value',
                    hintText: 'Value',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter value';
                    }
                    return null;
                  },
                ),
              ),
              //button
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      //save data
                      final data = BusinessSettingRequestModel(
                        _taxNameController.text,
                        chargeType,
                        type,
                        _taxValueController.text,
                        widget.data.businessId,
                        widget.data.id,
                      );
                      context.read<BusinessSettingBloc>().add(
                          BusinessSettingEvent.editBusinessSetting(
                              data, widget.data.id ?? 0));
                      // Navigator.pop(context, data);
                      context.pop();
                      context.pop();
                    }
                  },
                  child: const Text('Simpan',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
