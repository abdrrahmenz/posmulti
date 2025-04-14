import 'dart:convert';

import 'package:flutter_jago_pos_app/presentation/home/models/product_quantity.dart';

class OrderRequestModel {
  final int outletId;
  final double subtotal;
  final double totalPrice;
  final int totalItems;
  final double tax;
  final double discount;
  final String paymentMethod;
  final List<ProductQuantity> items;

  OrderRequestModel(
      {required this.outletId,
      required this.subtotal,
      required this.totalPrice,
      required this.totalItems,
      required this.tax,
      required this.discount,
      required this.paymentMethod,
      required this.items});

  Map<String, dynamic> toMap() {
    return {
      'outlet_id': outletId,
      'sub_total': subtotal,
      'total_price': totalPrice,
      'total_items': totalItems,
      'tax': tax,
      'discount': discount,
      'payment_method': paymentMethod,
      'items': items.map((x) => x.toMap()).toList(),
    };
  }

  String toJson() => json.encode(toMap());
}
