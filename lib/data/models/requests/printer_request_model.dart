import 'dart:convert';

class PrinterModel {
  final String name;
  final String connectionType;
  final String? ipAddress;
  final String? macAddress;
  final int paperWidth;
  final int outletId;
  final bool isDefault;
  final int? id;

  PrinterModel(
      {required this.name,
      required this.connectionType,
      required this.ipAddress,
      required this.macAddress,
      required this.paperWidth,
      required this.outletId,
      required this.isDefault,
      this.id});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'connection_type': connectionType,
      'ip_address': ipAddress,
      'mac_address': macAddress,
      'paper_width': paperWidth,
      'outlet_id': outletId,
      'default': isDefault,

    };
  }

  factory PrinterModel.fromMap(Map<String, dynamic> map) {
    return PrinterModel(
      name: map['name'],
      connectionType: map['connection_type'],
      ipAddress: map['ip_address'],
      macAddress: map['mac_address'],
      paperWidth: map['paper_width'],
      outletId: map['outlet_id'],
      isDefault: map['default'] == 1,
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PrinterModel.fromJson(String source) =>
      PrinterModel.fromMap(json.decode(source));
}
