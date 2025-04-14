import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/core/extensions/build_context_ext.dart';
import 'package:flutter_jago_pos_app/data/models/requests/business_setting_request_model.dart';
import 'package:flutter_jago_pos_app/presentation/tax_discount/bloc/business_setting/business_setting_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/tax_discount/pages/edit_tax_page.dart';

class DetailTaxPage extends StatefulWidget {
  final BusinessSettingRequestModel businessSetting;
  const DetailTaxPage({
    super.key,
    required this.businessSetting,
  });

  @override
  State<DetailTaxPage> createState() => _DetailTaxPageState();
}

class _DetailTaxPageState extends State<DetailTaxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail',
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
            title: const Text('Nama'),
            subtitle: Text(widget.businessSetting.name),
          ),
          ListTile(
            title: const Text('Charge Type'),
            subtitle: Text(widget.businessSetting.chargeType),
          ),
          ListTile(
            title: const Text('Type'),
            subtitle: Text(widget.businessSetting.type),
          ),

          ListTile(
            title: const Text('Value'),
            subtitle: Text(widget.businessSetting.value.toString()),
          ),
          SizedBox(height: 16),
          //edit button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.red,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(120, 40),
                ),
                onPressed: () {
                  context.read<BusinessSettingBloc>().add(
                      BusinessSettingEvent.deleteBusinessSetting(
                          widget.businessSetting.id ?? 0));
                  context.pop();
                  context.showSnackBar('Delete Success', AppColors.red);
                },
                child: const Text('Delete',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(120, 40),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditTaxPage(
                        data: widget.businessSetting,
                      ),
                    ),
                  );
                },
                child: const Text('Edit',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
