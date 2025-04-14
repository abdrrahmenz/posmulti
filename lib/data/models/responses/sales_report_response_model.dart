import 'dart:convert';

import 'package:flutter_jago_pos_app/data/models/responses/transaction_response_model.dart';

class SalesReportResponseModel {
  final String date;
  final int totalRecipts;
  final double totalSales;
  final double averageSales;
  final double totalCost;
  final double totalPrice;
  final double totalProfit;
  final List<Transaction> sales;

  SalesReportResponseModel(
      this.date,
      this.totalRecipts,
      this.totalSales,
      this.averageSales,
      this.sales,
      this.totalCost,
      this.totalPrice,
      this.totalProfit);

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'totalRecipts': totalRecipts,
      'totalSales': totalSales,
      'averageSales': averageSales,
      'sales': sales.map((x) => x.toMap()).toList(),
      'totalCost': totalCost,
      'totalPrice': totalPrice,
      'totalProfit': totalProfit
    };
  }

  factory SalesReportResponseModel.fromMap(Map<String, dynamic> map) {
    return SalesReportResponseModel(
        map['date'] ?? '',
        map['totalRecipts']?.toInt() ?? 0,
        map['totalSales']?.toDouble() ?? 0.0,
        map['averageSales']?.toDouble() ?? 0.0,
        List<Transaction>.from(
          map['sales']?.map((x) => Transaction.fromMap(x)),
        ),
        map['totalCost']?.toDouble() ?? 0.0,
        map['totalPrice']?.toDouble() ?? 0.0,
        map['totalProfit']?.toDouble() ?? 0.0);
  }

  String toJson() => json.encode(toMap());

  factory SalesReportResponseModel.fromJson(String source) =>
      SalesReportResponseModel.fromMap(json.decode(source));
}
