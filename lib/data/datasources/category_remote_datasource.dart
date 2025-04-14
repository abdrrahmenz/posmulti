import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_jago_pos_app/core/constants/variables.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/responses/category_response_model.dart';
import 'package:http/http.dart' as http;

class CategoryRemoteDataSource {
  Future<Either<String, CategoryResponseModel>> getCategories() async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData?.accessToken;
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/get-categories'),
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return Right(CategoryResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  //add category
  Future<Either<String, String>> addCategory(String name) async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData?.accessToken;
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/add-category'),
      body: jsonEncode({
        'name': name,
        'business_id': authData?.data?.businessId,
      }),
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 201) {
      return Right('success');
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, String>> updateCategory(int id, String name) async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData?.accessToken;
    final response = await http.put(
      Uri.parse('${Variables.baseUrl}/api/update-category/$id'),
      body: jsonEncode({
        'name': name,
        'business_id': authData?.data?.businessId,
      }),
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return Right('success');
    } else {
      return Left(response.body);
    }
  }
}
