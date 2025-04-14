import 'package:dartz/dartz.dart';
import 'package:flutter_jago_pos_app/core/constants/variables.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/requests/outlet_request_model.dart';
import 'package:flutter_jago_pos_app/data/models/responses/outlet_response_model.dart';
import 'package:http/http.dart' as http;

class OutletRemoteDatasource {
  Future<Either<String, String>> addOutlet(OutletRequestModel data) async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData?.accessToken;
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/add-outlet'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
        'Accept': 'application/json',
      },
      body: data.toJson(),
    );

    if (response.statusCode == 201) {
      return Right('Success');
    } else {
      return Left('Failed');
    }
  }

  Future<Either<String, String>> updateOutlet(OutletRequestModel data, int id) async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData?.accessToken;
    final response = await http.put(
      Uri.parse('${Variables.baseUrl}/api/update-outlet/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
        'Accept': 'application/json',
      },
      body: data.toJson(),
    );

    if (response.statusCode == 200) {
      return Right('Success');
    } else {
      return Left('Failed');
    }
  }

  Future<Either<String, OutletResponseModel>> getOutlets() async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData?.accessToken;
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/get-outlets/${authData?.data?.businessId}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return Right(OutletResponseModel.fromJson(response.body));
    } else {
      return Left('Failed');
    }
  }
}
