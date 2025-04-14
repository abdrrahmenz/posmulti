import 'dart:convert';

class MeResponseModel {
    final UserModel? data;

    MeResponseModel({
        this.data,
    });

    factory MeResponseModel.fromJson(String str) => MeResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory MeResponseModel.fromMap(Map<String, dynamic> json) => MeResponseModel(
        data: json["data"] == null ? null : UserModel.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "data": data?.toMap(),
    };
}

class UserModel {
    final int? id;
    final String? name;
    final String? email;
    final dynamic emailVerifiedAt;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final int? roleId;
    final int? businessId;
    final int? outletId;
    final dynamic phone;
    final Business? business;
    final Outlet? outlet;
    final Role? role;

    UserModel({
        this.id,
        this.name,
        this.email,
        this.emailVerifiedAt,
        this.createdAt,
        this.updatedAt,
        this.roleId,
        this.businessId,
        this.outletId,
        this.phone,
        this.business,
        this.outlet,
        this.role,
    });

    factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        roleId: json["role_id"],
        businessId: json["business_id"],
        outletId: json["outlet_id"],
        phone: json["phone"],
        business: json["business"] == null ? null : Business.fromMap(json["business"]),
        outlet: json["outlet"] == null ? null : Outlet.fromMap(json["outlet"]),
        role: json["role"] == null ? null : Role.fromMap(json["role"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "role_id": roleId,
        "business_id": businessId,
        "outlet_id": outletId,
        "phone": phone,
        "business": business?.toMap(),
        "outlet": outlet?.toMap(),
        "role": role?.toMap(),
    };
}

class Business {
    final int? id;
    final String? name;
    final int? ownerId;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final String? status;
    final dynamic activatedAt;
    final dynamic expiredAt;
    final List<Outlet>? outlets;

    Business({
        this.id,
        this.name,
        this.ownerId,
        this.createdAt,
        this.updatedAt,
        this.status,
        this.activatedAt,
        this.expiredAt,
        this.outlets,
    });

    factory Business.fromJson(String str) => Business.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Business.fromMap(Map<String, dynamic> json) => Business(
        id: json["id"],
        name: json["name"],
        ownerId: json["owner_id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        status: json["status"],
        activatedAt: json["activated_at"],
        expiredAt: json["expired_at"],
        outlets: json["outlets"] == null ? [] : List<Outlet>.from(json["outlets"]!.map((x) => Outlet.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "owner_id": ownerId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "status": status,
        "activated_at": activatedAt,
        "expired_at": expiredAt,
        "outlets": outlets == null ? [] : List<dynamic>.from(outlets!.map((x) => x.toMap())),
    };
}

class Role {
  final int id;
  final String name;

  Role(this.id, this.name);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory Role.fromMap(Map<String, dynamic> map) {
    return Role(
      map['id']?.toInt() ?? 0,
      map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Role.fromJson(String source) => Role.fromMap(json.decode(source));
}

class Outlet {
    final int? id;
    final String? name;
    final int? businessId;
    final String? address;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final dynamic phone;
    final dynamic description;

    Outlet({
        this.id,
        this.name,
        this.businessId,
        this.address,
        this.createdAt,
        this.updatedAt,
        this.phone,
        this.description,
    });

    factory Outlet.fromJson(String str) => Outlet.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Outlet.fromMap(Map<String, dynamic> json) => Outlet(
        id: json["id"],
        name: json["name"],
        businessId: json["business_id"] is int ? json["business_id"] : int.parse(json["business_id"]),
        address: json["address"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        phone: json["phone"],
        description: json["description"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "business_id": businessId,
        "address": address,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "phone": phone,
        "description": description,
    };
}
