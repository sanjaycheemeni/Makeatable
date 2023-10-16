import 'dart:io';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';
import 'package:makeatable/services/constants.dart';
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
      print(response.statusCode.toString() + response.body);

      return response;
    } on ClientException catch (e) {
      // NO Internet Connection
      print("no connectivity");
    }
    return false;
  }
}
