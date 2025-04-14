import 'package:flutter/material.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/core/constants/variables.dart';
import 'package:flutter_jago_pos_app/core/extensions/string_ext.dart';

import 'package:flutter_jago_pos_app/data/models/responses/product_response_model.dart';
import 'package:flutter_jago_pos_app/presentation/items/pages/product/edit_product_page.dart';

class DetailProductPage extends StatefulWidget {
  final Product data;
  const DetailProductPage({
    super.key,
    required this.data,
  });

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Product',
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
          widget.data.image != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    Variables.baseUrl + widget.data.image!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                )
              : Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: changeStringtoColor(widget.data.color ?? ''),
                  ),
                ),
          ListTile(
            title: const Text('Nama Product'),
            subtitle: Text(widget.data.name ?? ''),
          ),
          //category
          ListTile(
            title: const Text('Kategori Product'),
            subtitle: Text(widget.data.category?.name ?? ''),
          ),
          ListTile(
            title: const Text('Harga Jual Product'),
            subtitle: Text(widget.data.price!.currencyFormatRpV3),
          ),

          ListTile(
            title: const Text('Harga Dasar Product'),
            subtitle: Text(widget.data.cost!.currencyFormatRpV3),
          ),
          SizedBox(height: 16),
          //edit button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProductPage(data: widget.data),
                ),
              );
            },
            child: const Text('Edit Product'),
          ),
        ],
      ),
    );
  }
}
