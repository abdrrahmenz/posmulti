import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/core/constants/variables.dart';
import 'package:flutter_jago_pos_app/core/extensions/string_ext.dart';
import 'package:flutter_jago_pos_app/presentation/items/bloc/product/product_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/items/pages/product/detail_product_page.dart';
import 'package:flutter_jago_pos_app/presentation/items/pages/stock/outlet_stock_page.dart';

class StockPage extends StatefulWidget {
  const StockPage({super.key});

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  final _searchController = TextEditingController();
  @override
  void initState() {
    context.read<ProductBloc>().add(ProductEvent.getProducts());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stock Management',
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
              return Column(
                children: [
                  //search widget here
                  Container(
                    margin: EdgeInsets.all(16),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search product',
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                      ),
                      controller: _searchController,
                      onChanged: (value) {
                        context
                            .read<ProductBloc>()
                            .add(ProductEvent.searchProduct(value));
                      },
                    ),
                  ),

                  Expanded(
                    child: ListView.builder(
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
                                        color: changeStringtoColor(
                                            product.color ?? ""),
                                      ),
                                    ),
                              title: Text(product.name ?? ""),
                              subtitle:
                                  Text("Category: ${product.category?.name}"),
                              trailing: Text(product.price!.currencyFormatRpV3,
                                  style: TextStyle(fontSize: 14)),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return OutletStockPage(
                                      data: product.stocks ?? []);
                                }));
                              },
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Divider(),
                            ),
                          ],
                        );
                      },
                      itemCount: data.length,
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
