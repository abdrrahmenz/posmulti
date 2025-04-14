import 'package:dartz/dartz.dart';
import 'package:flutter_jago_pos_app/core/constants/variables.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/requests/business_setting_request_model.dart';
import 'package:flutter_jago_pos_app/data/models/responses/business_type_response_model.dart';
import 'package:http/http.dart' as http;

class BusinessSettingRemoteDatasource {
  Future<Either<String, String>> addBusinessSetting(
      BusinessSettingRequestModel data) async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData!.accessToken;
    // final businessId = authData.data!.businessId!;
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/add-business-setting'),
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: data.toJson(),
    );

    if (response.statusCode == 201) {
      return right('Success');
    } else {
      return left('Failed');
    }
  }

  Future<Either<String, String>> updateBusinessSetting(
      BusinessSettingRequestModel data, int id) async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData!.accessToken;
    // final businessId = authData.data!.businessId!;
    final response = await http.put(
      Uri.parse('${Variables.baseUrl}/api/update-business-setting/$id'),
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: data.toJson(),
    );

    if (response.statusCode == 200) {
      return right('Success');
    } else {
      return left('Failed');
    }
  }

  //delete business setting
  Future<Either<String, String>> deleteBusinessSetting(int id) async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData!.accessToken;
    final response = await http.delete(
      Uri.parse('${Variables.baseUrl}/api/delete-business-setting/$id'),
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return right('Success');
    } else {
      return left('Failed');
    }
  }

  Future<Either<String, BusinessTypeResponseModel>> getBusinessSetting() async {
    final authData = await AuthLocalDatasource().getUserData();
    final token = authData!.accessToken;
    final response = await http.get(
      Uri.parse(
          '${Variables.baseUrl}/api/get-business-settings-by-business/${authData.data!.businessId}'),
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return right(BusinessTypeResponseModel.fromJson(response.body));
    } else {
      return left('Failed');
    }
  }
}
