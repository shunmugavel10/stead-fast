// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    LoginModel({
        this.mobileNo,
        this.password,
        this.countryCode,
    });

    String? mobileNo;
    String? password;
    String? countryCode;

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        mobileNo: json["mobileNo"],
        password: json["password"],
        countryCode: json["countryCode"],
    );

    Map<String, dynamic> toJson() => {
        "mobileNo": mobileNo,
        "password": password,
        "countryCode": countryCode,
    };
}
