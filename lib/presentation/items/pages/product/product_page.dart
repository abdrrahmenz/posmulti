import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/core/constants/variables.dart';
import 'package:flutter_jago_pos_app/core/extensions/string_ext.dart';
import 'package:flutter_jago_pos_app/presentation/items/bloc/category/category_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/items/pages/product/add_product_page.dart';
import 'package:flutter_jago_pos_app/presentation/items/pages/product/detail_product_page.dart';

import '../../bloc/product/product_bloc.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    context.read<ProductBloc>().add(ProductEvent.getProducts());
    context.read<CategoryBloc>().add(CategoryEvent.getCategories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Products',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: AppColors.white)),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return Center(child: CircularProgressIndicator());
            },
            loading: () {
              return Center(child: CircularProgressIndicator());
            },
            error: (message) {
              return Center(child: Text(message));
            },
            success: (data) {
              if (data.isEmpty) {
                return Center(child: Text("No data"));
              }
              return ListView.builder(
                itemBuilder: (context, index) {
                  final product = data[index];
                  return Column(
                    children: [
                      ListTile(
                        leading: product.image != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  '${Variables.baseUrl}${product.image!}',
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      changeStringtoColor(product.color ?? ""),
                                ),
                              ),
                        title: Text(product.name ?? ""),
                        subtitle: Text("Category: ${product.category?.name}"),
                        trailing: Text(product.price!.currencyFormatRpV3,
                            style: TextStyle(fontSize: 14)),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailProductPage(data: product);
                          }));
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(),
                      ),
                    ],
                  );
                },
                itemCount: data.length,
              );
            },
          );
        },
      ),
      floatingActionButton: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          final categories = state.maybeWhen(
            orElse: () => [],
            success: (data) => data.data ?? [],
          );
          return FloatingActionButton(
            onPressed: () {
              if (categories.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Please add category first"),
                  backgroundColor: AppColors.red,
                ));
                return;
              }
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AddProductPage();
              }));
            },
            backgroundColor: AppColors.primary,
            child: const Icon(Icons.add, color: AppColors.white),
          );
        },
      ),
    );
  }
}
