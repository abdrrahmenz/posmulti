import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_jago_pos_app/core/constants/variables.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/responses/product_response_model.dart';
import 'package:flutter_jago_pos_app/presentation/items/models/product_model.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class ProductRemoteDataSource {
  //add product

  Future<Either<String, String>> addProduct(ProductModel data) async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData!.accessToken;
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/add-product'),
      headers: {
        'Authorization': 'Bearer $token',
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: data.toJson(),
    );

    print(data.toJson());

    if (response.statusCode == 201) {
      print(response.body);
      return right('Success');
    } else {
      print(response.body);
      return left('Failed');
    }
  }

  Future<Either<String, String>> addProductWithImage(
      ProductModel data, XFile image) async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData!.accessToken;
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('${Variables.baseUrl}/api/add-product'),
    );

    request.headers.addAll({
      'Authorization': 'Bearer $token',
      'accept': 'application/json',
    });

    request.fields.addAll(data.toMapString());
    request.files.add(await http.MultipartFile.fromPath('image', image.path));

    var response = await request.send();

    if (response.statusCode == 201) {
      return right('Success');
    } else {
      return left('Failed');
    }
  }

  //edit product
  Future<Either<String, String>> editProduct(ProductModel data, int id) async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData!.accessToken;
    final response = await http.put(
      Uri.parse('${Variables.baseUrl}/api/update-product/$id'),
      headers: {
        'Authorization': 'Bearer $token',
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: data.toJson(),
    );

    print(data.toJson());

    if (response.statusCode == 200) {
      print(response.body);
      return right('Success');
    } else {
      print(response.body);
      return left('Failed');
    }
  }

  Future<Either<String, String>> editProductWithImage(
      ProductModel data, XFile image, int id) async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData!.accessToken;
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('${Variables.baseUrl}/api/update-product-with-image/$id'),
    );

    request.headers.addAll({
      'Authorization': 'Bearer $token',
      'accept': 'application/json',
    });

    request.fields.addAll(data.toMapString());
    request.files.add(await http.MultipartFile.fromPath('image', image.path));

    var response = await request.send();

    if (response.statusCode == 200) {
      return right('Success');
    } else {
      return left('Failed');
    }
  }

  //get product
  Future<Either<String, ProductResponseModel>> getProducts() async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData!.accessToken;
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/get-products'),
      headers: {
        'Authorization': 'Bearer $token',
        'accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return right(ProductResponseModel.fromMap(jsonDecode(response.body)));
    } else {
      return left('Failed');
    }
  }

  //edit stock
  Future<Either<String, String>> updateStock(int stock, String type, String note, int id) async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData!.accessToken;
    final response = await http.put(
      Uri.parse('${Variables.baseUrl}/api/update-stock/$id'),
      headers: {
        'Authorization': 'Bearer $token',
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'quantity': stock,
        'type': type,
        'note': note}),
    );

    if (response.statusCode == 200) {
      return right('Success');
    } else {
      return left('Failed');
    }
  }
}
