import 'dart:convert';
import 'dart:io';
// import 'dart:io';

import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';
import 'package:makeatable/model/Top5Food.dart';
import 'package:makeatable/model/Top5Resto.dart';
import 'package:http/http.dart' as http;
import 'package:makeatable/model/customer.dart';
import 'package:makeatable/services/constants.dart';

class HomepageService {
  Future<List<Resto>?> fetchTop5Resto() async {
    try {
      final response = await http.get(
        Uri.parse(url['TOP_5_RESTO']!),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      return topRestoFromJson(utf8.decode(response.bodyBytes));
    } on ClientException catch (e) {
      // no internet connection
      print("no network" + e.toString());
      return null;
    } catch (e) {
      print("Error : " + e.toString());
      return null;
    }
  }

  Future<List<Food>?> fetchTop5Food() async {
    try {
      final response = await http.get(
        Uri.parse(url['TOP_5_FOOD']!),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      print(response.body);

      return topFoodFromJson(utf8.decode(response.bodyBytes));
    } on ClientException catch (e) {
      // no internet connection
      print("no network" + e.toString());
      return null;
    } catch (e) {
      print("Error : " + e.toString());
      return null;
    }
  }

  Future<User?> getUserNameByToken() async {
    try {
      final response = await http.get(
        Uri.parse(url['USER_NAME_BY_TOKEN']!),
        headers: {
          'Content-Type': 'application/json',
          HttpHeaders.authorizationHeader:
              "Bearer ${GetStorage().read('accessToken')}"
        },
      );
      print(response.body);

      return userFromJson(utf8.decode(response.bodyBytes));
    } on ClientException catch (e) {
      // no internet connection
      print("no network" + e.toString());
      return null;
    } catch (e) {
      print("Error : " + e.toString());
      return null;
    }
  }
}
