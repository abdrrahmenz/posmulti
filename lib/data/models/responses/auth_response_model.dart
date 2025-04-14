import 'dart:convert';

class AuthResponseModel {
  final String? accessToken;
  final Data? data;

  AuthResponseModel({
    this.accessToken,
    this.data,
  });

  factory AuthResponseModel.fromJson(String str) =>
      AuthResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthResponseModel.fromMap(Map<String, dynamic> json) =>
      AuthResponseModel(
        accessToken: json["access_token"],
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "access_token": accessToken,
        "data": data?.toMap(),
      };
}

class Data {
  final String? name;
  final String? email;
  final int? roleId;
  final DateTime? updatedAt;
  final DateTime? createdAt;
  final int? id;
  final int? businessId;

  Data({
    this.name,
    this.email,
    this.roleId,
    this.updatedAt,
    this.createdAt,
    this.id,
    this.businessId,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        name: json["name"],
        email: json["email"],
        roleId: json["role_id"] is int
            ? json["role_id"]
            : int.parse(json["role_id"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"],
        businessId: json["business_id"] is int
            ? json["business_id"]
            : int.parse(json["business_id"]),
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "role_id": roleId,
        "updated_at": updatedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "id": id,
        "business_id": businessId,
      };
}
