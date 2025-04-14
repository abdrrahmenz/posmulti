import 'dart:convert';

class BusinessSettingRequestModel {
  final int? id;
  final String name;
  final String chargeType;
  final String type;
  final String value;
  final int businessId;

  BusinessSettingRequestModel(this.name, this.chargeType, this.type, this.value,
      this.businessId, this.id);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'charge_type': chargeType,
      'type': type,
      'value': value,
      'business_id': businessId,
    };
  }

  factory BusinessSettingRequestModel.fromMap(Map<String, dynamic> map) {
    return BusinessSettingRequestModel(
      map['name'] ?? '',
      map['charge_type'] ?? '',
      map['type'] ?? '',
      map['value'] ?? '',
      map['business_id'] is int
          ? map['business_id']
          : int.parse(map['business_id']),
      map['id']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory BusinessSettingRequestModel.fromJson(String source) =>
      BusinessSettingRequestModel.fromMap(json.decode(source));
}
