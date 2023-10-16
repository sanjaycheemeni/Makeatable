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
    // empty fileds check
    if (!(fullname.text == '' ||
        email.text == '' ||
        mobilenumber.text == '' ||
        password.text == '' ||
        confirmnewpassword.text == '')) {
      // email validation
      if (isEmailValid(email.text)) {
        // mobile number validation
        if (isValidMobileNumber(mobilenumber.text)) {
          // password missmatch
          if (password.text == confirmnewpassword.text) {
            // password strength validation
            if (isStrongPassword(password.text)) {
              final status = await userService.registreUser(new User(
                  fullName: fullname.text,
                  email: email.text,
                  mobileNumber: mobilenumber.text,
                  password: password.text,
                  preference: "VEG",
                  status: "PENDING",
                  userType: "CUSTOMER"));
              // database confilict, Email already registered
              if (status == 409) {
                snackAlreadyRegEmail(context: context);
                return false;
              }
              // 202, Regsitered Successfully..!!
              else {
                snackSuccess(context: context);
                return true;
              }
            } else {
              snackNotStrongPass(context: context);
            }
          } else {
            snackMissmatchPass(context: context);
          }
        } else {
          snackInvalidMobileNumber(context: context);
        }
      } else {
        snackInvalidEmail(context: context);
      }
    } else {
      snackEmptyFields(context: context);
    }
    return false;
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
