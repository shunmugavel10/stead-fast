import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:steadfast/api/endpoints.dart';
import 'package:steadfast/authentication/utilities/login_model.dart';
import 'package:steadfast/common/component/show_toast.dart';


class ApiRepo {
  Future<LoginModel?> loginNetwork(
      BuildContext context, String mobile, password) async {
    Response response;
    Dio dio = Dio();

    try {
      print("$mobile, $password");
      response = await dio.post('$baseUrl$url_post_login', data: {
        "mobileNo":mobile,
        "password":password,
        "countryCode":"91"
      });
      print("$mobile, $password");
      print(response.data);
      if (response.statusCode == 200) {
         Modular.to.pushNamed ('/landingPage');
       
      } else {
        showtoast("Verify Failed");
      }
    } on SocketException catch (e) {
      showtoast("Network Failed");
    } on TimeoutException catch (e) {
      showtoast("Timeout");
    }
  }
}

  