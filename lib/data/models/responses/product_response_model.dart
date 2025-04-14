import 'dart:convert';

import 'package:flutter_jago_pos_app/data/models/responses/me_response_model.dart';

import 'category_response_model.dart';

class ProductResponseModel {
  final List<Product>? data;

  ProductResponseModel({
    this.data,
  });

  factory ProductResponseModel.fromJson(String str) =>
      ProductResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductResponseModel.fromMap(Map<String, dynamic> json) =>
      ProductResponseModel(
        data: json["data"] == null
            ? []
            : List<Product>.from(json["data"]!.map((x) => Product.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Product {
  final int? id;
  final String? name;
  final int? categoryId;
  final int? businessId;
  final String? description;
  final String? image;
  final String? color;
  final String? price;
  final String? cost;
  final int? stock;
  final String? barcode;
  final String? sku;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Category? category;
  final List<Stock>? stocks;

  Product({
    this.id,
    this.name,
    this.categoryId,
    this.businessId,
    this.description,
    this.image,
    this.color,
    this.price,
    this.cost,
    this.stock,
    this.barcode,
    this.sku,
    this.createdAt,
    this.updatedAt,
    this.category,
    this.stocks,
  });

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        categoryId: json["category_id"] is int
            ? json["category_id"]
            : int.parse(json["category_id"]),
        businessId: json["business_id"] is int
            ? json["business_id"]
            : int.parse(json["business_id"]),
        description: json["description"],
        image: json["image"],
        color: json["color"],
        price: json["price"],
        cost: json["cost"],
        stock: json["stock"] is int ? json["stock"] : int.parse(json["stock"]),
        barcode: json["barcode"],
        sku: json["sku"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        category: json["category"] == null
            ? null
            : Category.fromMap(json["category"]),
        stocks: json["stocks"] == null
            ? []
            : List<Stock>.from(json["stocks"].map((x) => Stock.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "category_id": categoryId,
        "business_id": businessId,
        "description": description,
        "image": image,
        "color": color,
        "price": price,
        "cost": cost,
        "stock": stock,
        "barcode": barcode,
        "sku": sku,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "category": category?.toMap(),
      };
}

class Stock {
  final int? id;
  final int? productId;
  final int? outletId;
  final int? quantity;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Outlet? outlet;
  final Product? product;

  Stock({
    this.id,
    this.productId,
    this.outletId,
    this.quantity,
    this.createdAt,
    this.updatedAt,
    this.outlet,
    this.product,
  });

  factory Stock.fromJson(String str) => Stock.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Stock.fromMap(Map<String, dynamic> json) => Stock(
        id: json["id"],
        productId: json["product_id"] is int
            ? json["product_id"]
            : int.parse(json["product_id"]),
        outletId: json["outlet_id"] is int
            ? json["outlet_id"]
            : int.parse(json["outlet_id"]),
        quantity: json["quantity"] is int
            ? json["quantity"]
            : int.parse(json["quantity"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        outlet: json["outlet"] == null ? null : Outlet.fromMap(json["outlet"]),
        product:
            json["product"] == null ? null : Product.fromMap(json["product"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "product_id": productId,
        "outlet_id": outletId,
        "quantity": quantity,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "outlet": outlet?.toMap(),
      };
}
