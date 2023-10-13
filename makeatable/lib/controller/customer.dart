import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:makeatable/model/api_response.dart';

import 'package:makeatable/services/constants.dart';
import 'package:makeatable/view/SearchResult/Widgets/bottomnavbar.dart';

import '../model/customer.dart';

class UserController {
  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobilenumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmnewpassword = TextEditingController();
// register new user

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
            // "preference": "VEG",
            "userType": "CUSTOMER",
            "status": "PENDING"
          }));
      // log to console
      print(response.body);

      if (response.statusCode == 200) {
        return true;
        //  return ApiResponse.fromJson(utf8.decoder(response.bodyBytes));
      }
    } catch (e) {
      print(e.toString());
    }
    return false;
  }
}
