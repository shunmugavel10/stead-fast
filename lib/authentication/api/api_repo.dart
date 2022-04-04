import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:steadfast/authentication/api/endpoint.dart';
import 'package:steadfast/authentication/utilities/login_model.dart';
import 'package:steadfast/authentication/utilities/signup_model.dart';
import 'package:steadfast/common/component/show_toast.dart';

class ApiRepo {
  Future<void> signInNetwork(
    BuildContext context,
    String firstName,
    lastName,
    addressLine1,
    addressLine2,
    city,
    state,
    nationality,
    occupation,
    email,
    mobileNumber,
  ) async {
    Response response;
    Dio dio = Dio();

    try {
      print("object");
      response = await dio.post('$baseUrl$url_post_signIn', data: {
        "mobileNo": mobileNumber,
        "code": "etftjrdd",
        "firstName": firstName,
        "lastName": lastName,
        "middleName": "arshad",
        "name": "mohamed arshad ch",
        "martialStatus": "married",
        "createdByCustomer": true,
        "dob": null,
        "regdate": null,
        "expirydate": null,
        "icFinPP": null,
        "aliasName": null,
        "title": null,
        "gender": null,
        "placeOfBirth": null,
        "dependents": null,
        "permanentAddressLine1": null,
        "permanentAddressLine2": null,
        "permanentAddressCity": null,
        "permanentAddressState": null,
        "permanentAddressCountry": null,
        "permanentAddressPostalCode": null,
        "idCardPlaceOfIssue": null,
        "qualification": null,
        "designation": null,
        "occupation": occupation,
        "income": null,
        "regNo": null,
        "idType": null,
        "idissuedDate": null,
        "idexpiryDate": null,
        "residenceStatus": null,
        "nationality": nationality,
        "contactNo1": null,
        "contactNo2": null,
        "faxNo": null,
        "email": email,
        "address1": addressLine1,
        "address2": addressLine2,
        "city": city,
        "state": state,
        "postal": null
      });
      print(response.data);
      if (response.statusCode == 200) {
        Modular.to.navigate('/loginPage');
      } else {
        showtoast("Verify Failed");
      }
    } catch (e) {
      print(e);
    }
  }



}
