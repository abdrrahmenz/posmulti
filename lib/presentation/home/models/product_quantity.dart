import 'dart:convert';

import 'package:flutter_jago_pos_app/core/extensions/string_ext.dart';
import 'package:flutter_jago_pos_app/data/models/responses/product_response_model.dart';

class ProductQuantity {
  final Product product;
  int quantity;
  ProductQuantity({
    required this.product,
    required this.quantity,
  });

  Map<String, dynamic> toMap() {
    return {
      'product_id': product.id,
      'quantity': quantity,
      'price': product.price,
      'total': product.price!.toDouble * quantity,
    };
  }

  String toJson() => json.encode(toMap());
}
