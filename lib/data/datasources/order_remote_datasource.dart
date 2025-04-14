import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_jago_pos_app/core/constants/variables.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/requests/order_request_model.dart';
import 'package:flutter_jago_pos_app/data/models/responses/transaction_response_model.dart';
import 'package:http/http.dart' as http;

class OrderRemoteDatasource {
  Future<Either<String, Transaction>> createOrder({
    required OrderRequestModel orderRequestModel,
  }) async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData?.accessToken;

    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/add-order'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
        'Accept': 'application/json',
      },
      body: orderRequestModel.toJson(),
    );

    if (response.statusCode == 201) {
      //from json key data
      final data = jsonDecode(response.body)['data'];

      return Right(Transaction.fromMap(data));
    } else {
      return Left('Failed');
    }
  }

  //get order by outlet id
  Future<Either<String, TransactionResponseModel>> getOrderByOutletId() async {
    final authData = await AuthLocalDatasource().getUserData();
    final outletData = await AuthLocalDatasource().getOutletData();
    final token = authData?.accessToken;

    final response = await http.get(
      Uri.parse(
          '${Variables.baseUrl}/api/get-orders-by-outlet/${outletData.id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return Right(TransactionResponseModel.fromJson(response.body));
    } else {
      return Left('Failed');
    }
  }
}
