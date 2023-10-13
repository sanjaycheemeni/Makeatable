import 'dart:convert';
import 'dart:html';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:makeatable/model/api_response.dart';

import 'package:makeatable/services/constants.dart';

import '../model/customer.dart';

class UserController {
// register new user

  Future registreUser(User user) async {
    try {
      final response = await http.post(Uri.parse(url['USER']!),
          headers: {
            'Content-Type': 'application/json',
          },
          body: user.toJson());

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
