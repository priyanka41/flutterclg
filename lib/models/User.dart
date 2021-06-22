// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
        this.name,
        this.email,
        this.address,
        this.licenseNo,
        this.licensePhoto,
        this.dob,
        this.phone,
        this.modelNo,
        this.licensePlateNo,
        this.lastServicingDate,
    });

    String name;
    String email;
    String address;
    String licenseNo;
    String licensePhoto;
    DateTime dob;
    String phone;
    String modelNo;
    String licensePlateNo;
    DateTime lastServicingDate;

    factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        email: json["email"],
        address: json["address"],
        licenseNo: json["license_no"],
        licensePhoto: json["license_photo"],
        dob: DateTime.parse(json["dob"]),
        phone: json["phone"],
        modelNo: json["model_no"],
        licensePlateNo: json["license_plate_no"],
        lastServicingDate: DateTime.parse(json["last_servicing_date"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "address": address,
        "license_no": licenseNo,
        "license_photo": licensePhoto,
        "dob": dob.toIso8601String(),
        "phone": phone,
        "model_no": modelNo,
        "license_plate_no": licensePlateNo,
        "last_servicing_date": lastServicingDate.toIso8601String(),
    };
}
