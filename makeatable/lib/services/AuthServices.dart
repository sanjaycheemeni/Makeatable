import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';
import 'package:makeatable/model/Auth.dart';
import 'package:makeatable/services/constants.dart';
import 'package:http/http.dart' as http;
import 'package:makeatable/view/auth_module/widgets/snackbar.dart';

class AuthService {
  GetStorage storage = GetStorage();

  Future<bool> auhenticate(Auth auth) async {
    try {
      final response = await http.post(Uri.parse(url['AUTH']!),
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode(auth.toJson()));

      print(auth.toJson().toString());
      // log to console
      print(jsonDecode(response.body)['token']);

      // store token in storage
      storage.write('accessToken', jsonDecode(response.body)['token']);

      // return true, if there is no exceptipon
      return response.statusCode == 200;
    } on ClientException catch (e) {
      // no internet connection
      print("no network" + e.toString());
      return false;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }
}
