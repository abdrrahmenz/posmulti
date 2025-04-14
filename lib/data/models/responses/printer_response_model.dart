import 'dart:convert';

import 'package:flutter_jago_pos_app/data/models/requests/printer_request_model.dart';

class PrinterResponseModel {
  final List<PrinterModel> data;

  PrinterResponseModel(this.data);

  Map<String, dynamic> toMap() {
    return {
      'data': data.map((x) => x.toMap()).toList(),
    };
  }

  factory PrinterResponseModel.fromMap(Map<String, dynamic> map) {
    return PrinterResponseModel(
      List<PrinterModel>.from(map['data']?.map((x) => PrinterModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PrinterResponseModel.fromJson(String source) => PrinterResponseModel.fromMap(json.decode(source));
}
