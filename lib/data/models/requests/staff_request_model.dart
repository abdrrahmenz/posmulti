import 'dart:convert';

class StaffRequestModel {
  final String name;
  final String email;
  final String password;
  final int outletId;
  final int roleId;
  final int businessId;

  StaffRequestModel(
      {required this.name,
      required this.email,
      required this.password,
      required this.outletId,
      required this.roleId,
      required this.businessId});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'outlet_id': outletId,
      'role_id': roleId,
      'business_id': businessId,
    };
  }

  String toJson() => json.encode(toMap());
}
