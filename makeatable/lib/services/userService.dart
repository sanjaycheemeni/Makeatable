import 'dart:io';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';
import 'package:makeatable/controller/userController.dart';
import 'package:makeatable/services/constants.dart';
import 'package:makeatable/view/auth_module/widgets/snackbar.dart';
import '../model/api_response.dart';
import 'package:http/http.dart' as http;

import '../model/customer.dart';

class UserService {
  static UserService instance = UserService.internal();
  UserService.internal();
  factory UserService() => instance;

  Future registreUser(User user) async {
    try {
      final response = await http.post(Uri.parse(url['USER']!),
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode({
            "fullName": user.fullName,
            "email": user.email,
            "password": user.password,
            "mobileNumber": user.mobileNumber,
            "preference": "VEG",
            "userType": "CUSTOMER",
            "status": "PENDING"
          }));

      // log to console
      print(response.statusCode.toString() + ":" + response.body);

      // return status code, if there is no exceptipon
      return response.statusCode;
    } on ClientException catch (e) {
      // no network connection error
      // snackNoInternetError(BuildContext);
    }

    return;
  }
}
