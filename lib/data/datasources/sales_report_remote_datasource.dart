import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_jago_pos_app/core/constants/variables.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/responses/sales_report_response_model.dart';
import 'package:http/http.dart' as http;

class SalesReportRemoteDatasource {
  Future<Either<String, SalesReportResponseModel>> getSalesReport(
      String date) async {
    final authData = await AuthLocalDatasource().getUserData();
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/get-daily-sales-report'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData?.accessToken}',
      },
      body: jsonEncode({
        'date': date,
        'business_id': authData?.data?.businessId,
      }),
    );

    if (response.statusCode == 200) {
      return Right(SalesReportResponseModel.fromJson(response.body));
    } else {
      return Left('Failed');
    }
  }
}
