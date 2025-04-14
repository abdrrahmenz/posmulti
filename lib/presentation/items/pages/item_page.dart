import 'package:flutter/material.dart';
import 'package:flutter_jago_pos_app/presentation/home/widgets/drawer_widget.dart';
import 'package:flutter_jago_pos_app/presentation/items/pages/category_page.dart';
import 'package:flutter_jago_pos_app/presentation/items/pages/product/product_page.dart';
import 'package:flutter_jago_pos_app/presentation/items/pages/stock/stock_page.dart';

import '../../../core/constants/colors.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  //global key
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Items',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu, color: AppColors.white)),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListTile(
            leading: Icon(Icons.list),
            title: Text("Products"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProductPage();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.category),
            title: Text("Categories"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CategoryPage();
              }));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.inventory),
            title: Text("Stocks"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return StockPage();
              }));
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
