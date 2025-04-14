import 'dart:convert';

import 'package:flutter_jago_pos_app/data/models/requests/business_setting_request_model.dart';

class BusinessTypeResponseModel {
  final List<BusinessSettingRequestModel> data;

  BusinessTypeResponseModel(this.data);

  Map<String, dynamic> toMap() {
    return {
      'data': data.map((x) => x.toMap()).toList(),
    };
  }

  factory BusinessTypeResponseModel.fromMap(Map<String, dynamic> map) {
    return BusinessTypeResponseModel(
      List<BusinessSettingRequestModel>.from(
          map['data']?.map((x) => BusinessSettingRequestModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory BusinessTypeResponseModel.fromJson(String source) =>
      BusinessTypeResponseModel.fromMap(json.decode(source));
}
