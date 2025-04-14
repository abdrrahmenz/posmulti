import 'package:flutter/material.dart';

import 'package:flutter_jago_pos_app/data/models/responses/product_response_model.dart';
import 'package:flutter_jago_pos_app/presentation/items/pages/stock/edit_stock_page.dart';

class OutletStockPage extends StatefulWidget {
  final List<Stock> data;
  const OutletStockPage({
    super.key,
    required this.data,
  });

  @override
  State<OutletStockPage> createState() => _OutletStockPageState();
}

class _OutletStockPageState extends State<OutletStockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Outlet Stock',
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
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.data.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(widget.data[index].outlet?.name ?? ''),
                  subtitle: Text('Stock: ${widget.data[index].quantity}'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            EditStockPage(data: widget.data[index]),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
