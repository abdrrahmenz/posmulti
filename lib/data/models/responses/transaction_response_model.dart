import 'dart:convert';

import 'package:flutter_jago_pos_app/data/models/responses/product_response_model.dart';

class TransactionResponseModel {
  final List<Transaction>? data;

  TransactionResponseModel({
    this.data,
  });

  factory TransactionResponseModel.fromJson(String str) =>
      TransactionResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TransactionResponseModel.fromMap(Map<String, dynamic> json) =>
      TransactionResponseModel(
        data: json["data"] == null
            ? []
            : List<Transaction>.from(
                json["data"]!.map((x) => Transaction.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Transaction {
  final int? id;
  final String? orderNumber;
  final int? outletId;
  final String? subTotal;
  final String? totalPrice;
  final int? totalItems;
  final String? tax;
  final String? discount;
  final String? paymentMethod;
  final String? status;
  final int? cashierId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<Item>? items;

  Transaction({
    this.id,
    this.orderNumber,
    this.outletId,
    this.subTotal,
    this.totalPrice,
    this.totalItems,
    this.tax,
    this.discount,
    this.paymentMethod,
    this.status,
    this.cashierId,
    this.createdAt,
    this.updatedAt,
    this.items,
  });

  factory Transaction.fromJson(String str) =>
      Transaction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Transaction.fromMap(Map<String, dynamic> json) => Transaction(
        id: json["id"],
        orderNumber: json["order_number"],
        outletId: json["outlet_id"],
        subTotal: json["sub_total"] is int
            ? json["sub_total"].toString()
            : json["sub_total"],
        totalPrice: json["total_price"] is int
            ? json["total_price"].toString()
            : json["total_price"],
        totalItems: json["total_items"],
        tax: json["tax"] is int ? json["tax"].toString() : json["tax"],
        discount: json["discount"] is int
            ? json["discount"].toString()
            : json["discount"],
        paymentMethod: json["payment_method"],
        status: json["status"],
        cashierId: json["cashier_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        items: json["items"] == null
            ? []
            : List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "order_number": orderNumber,
        "outlet_id": outletId,
        "sub_total": subTotal,
        "total_price": totalPrice,
        "total_items": totalItems,
        "tax": tax,
        "discount": discount,
        "payment_method": paymentMethod,
        "status": status,
        "cashier_id": cashierId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class Item {
  final int? id;
  final int? orderId;
  final int? productId;
  final int? quantity;
  final String? price;
  final String? total;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Product? product;

  Item({
    this.id,
    this.orderId,
    this.productId,
    this.quantity,
    this.price,
    this.total,
    this.createdAt,
    this.updatedAt,
    this.product,
  });

  factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        id: json["id"],
        orderId: json["order_id"],
        productId: json["product_id"],
        quantity: json["quantity"],
        price: json["price"],
        total: json["total"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        product:
            json["product"] == null ? null : Product.fromMap(json["product"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "order_id": orderId,
        "product_id": productId,
        "quantity": quantity,
        "price": price,
        "total": total,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "product": product?.toMap(),
      };
}
