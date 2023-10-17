import 'package:flutter/foundation.dart';

class Auth {
  final String? email;
  final String? password;

  Auth({required this.email, required this.password}) {}

  String getUsername() {
    return this.email!;
  }

  Object? toJson() {
    return {"email": this.email, "password": this.password};
  }
}
