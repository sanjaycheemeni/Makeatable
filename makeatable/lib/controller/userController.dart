import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeatable/view/auth_module/widgets/snackbar.dart';

import '../model/customer.dart';
import '../services/userService.dart';

class UserController extends GetxController {
  UserService userService = new UserService();

  RxBool isLoading = false.obs;

  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobilenumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmnewpassword = TextEditingController();

  Future registerUser(BuildContext context) async {
    var status = await userService.registreUser(new User(
        fullName: fullname.text,
        email: email.text,
        mobileNumber: mobilenumber.text,
        password: password.text,
        preference: "VEG",
        status: "PENDING",
        userType: "CUSTOMER"));

    if (status == true) {
      snackSuccess(context: context);
    }
    return;
  }

  void change() {
    isLoading.value = !isLoading.value;
  }
}

// validations  ===============================

bool isStrongPassword(String password) {
  // This pattern enforces at least one uppercase letter, one lowercase letter, one digit, and a minimum length of 8 characters.
  final pattern = r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,}$';
  final regExp = RegExp(pattern);

  return regExp.hasMatch(password);
}

bool isEmailValid(String email) {
  // Define a regular expression pattern for a valid email address.
  final pattern = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';

  final regExp = RegExp(pattern);

  return regExp.hasMatch(email);
}

bool isValidMobileNumber(String mobileNumber) {
  // Define a regular expression pattern for a valid mobile number.
  final pattern = r'^\d{10}$'; // This pattern enforces 10 digits.

  final regExp = RegExp(pattern);

  return regExp.hasMatch(mobileNumber);
}
