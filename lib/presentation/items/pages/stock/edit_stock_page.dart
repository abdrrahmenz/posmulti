import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/core/extensions/build_context_ext.dart';
import 'package:flutter_jago_pos_app/core/extensions/string_ext.dart';

import 'package:flutter_jago_pos_app/data/models/responses/product_response_model.dart';
import 'package:flutter_jago_pos_app/presentation/items/bloc/product/product_bloc.dart';

class EditStockPage extends StatefulWidget {
  final Stock data;
  const EditStockPage({
    super.key,
    required this.data,
  });

  @override
  State<EditStockPage> createState() => _EditStockPageState();
}

class _EditStockPageState extends State<EditStockPage> {
  List<String> _stockType = ['Add', 'Reduce'];
  String? _selectedStockType = 'Add';

  final quantityController = TextEditingController();
  final noteController = TextEditingController();

  //form key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Stock',
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
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ListTile(
              title: const Text('Nama Produk'),
              subtitle: Text(widget.data.product?.name ?? ''),
            ),
            ListTile(
              title: const Text('Outlet'),
              subtitle: Text(widget.data.outlet?.name ?? ''),
            ),
            //input type stock
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Type',
                  hintText: 'Type',
                ),
                value: _selectedStockType,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedStockType = newValue;
                  });
                },
                items: _stockType.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 16),
            //input quantity
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Quantity',
                  hintText: 'Quantity',
                ),
                controller: quantityController,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                validator: (value) =>
                    value!.isEmpty ? 'Quantity wajib di isi' : null,
              ),
            ),
            SizedBox(height: 16),
            //note
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Note',
                  hintText: 'Note',
                ),
                maxLines: 2,
                controller: noteController,
                textInputAction: TextInputAction.done,
                validator: (value) =>
                    value!.isEmpty ? 'Note wajib di isi' : null,
              ),
            ),
            SizedBox(height: 24),
            //edit button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    //update stock

                    context.read<ProductBloc>().add(
                          ProductEvent.updateStock(
                            quantityController.text.toIntegerFromText,
                            _selectedStockType == 'Add' ? 'add' : 'reduce',
                            noteController.text,
                            widget.data.id!,
                          ),
                        );

                    Navigator.pop(context);
                    Navigator.pop(context);
                    context.showSnackBar('Stock Updated', AppColors.primary);
                  }
                },
                child: const Text('Edit Stock'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
