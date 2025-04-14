import 'dart:convert';

class OutletRequestModel {
  final String name;
  final String address;
  final String phone;
  final String description;
  final int businessId;

  OutletRequestModel(
      {required this.name,
      required this.address,
      required this.phone,
      required this.description,
      required this.businessId});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'address': address,
      'phone': phone,
      'description': description,
      'business_id': businessId,
    };
  }

  String toJson() => json.encode(toMap());
}
