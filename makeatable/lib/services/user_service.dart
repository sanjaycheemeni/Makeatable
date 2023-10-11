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

  Future<ApiResponse> write(
    int id,
    String firstName,
    String lastName,
    String title,
    String description,
    int sortOrder,
    bool enabled,
    bool visible,
    String status,
  ) async {
    Map<String, dynamic> body = {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'title': title,
      'description': description,
      'sortOrder': sortOrder,
      'enabled': enabled,
      'visible': visible,
      'status': status,
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
