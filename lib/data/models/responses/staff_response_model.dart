import 'dart:convert';

import 'package:flutter_jago_pos_app/data/models/responses/me_response_model.dart';

class StaffResponseModel {
  final List<UserModel> data;

  StaffResponseModel(this.data);

  Map<String, dynamic> toMap() {
    return {
      'data': data.map((x) => x.toMap()).toList(),
    };
  }

  factory StaffResponseModel.fromMap(Map<String, dynamic> map) {
    return StaffResponseModel(
      List<UserModel>.from(map['data']?.map((x) => UserModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory StaffResponseModel.fromJson(String source) =>
      StaffResponseModel.fromMap(json.decode(source));
}
