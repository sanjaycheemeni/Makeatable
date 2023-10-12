import 'dart:io';
import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:makeatable/services/constants.dart';
import '../model/api_response.dart';
import 'package:http/http.dart' as http;

class UserService {
  static UserService instance = UserService.internal();
  UserService.internal();
  factory UserService() => instance;

  // add user
  Future<ApiResponse> write(String fullName, String email, String password,
      String mobileNum, String userType) async {
    //

    Map<String, dynamic> body = {
      "fullName": fullName,
      "email": email,
      "password": password,
      "mobileNum": mobileNum,
      "userType": userType
    };

    final response = await http.post(
      Uri.parse(url['USER']!),
      headers: {
        'Content-Type': 'application/json',
        HttpHeaders.authorizationHeader:
            "Bearer ${GetStorage().read('accessToken')}"
      },
      body: json.encode(body),
    );

    return ApiResponse.fromJson(utf8.decode(response.bodyBytes));
  }
}
