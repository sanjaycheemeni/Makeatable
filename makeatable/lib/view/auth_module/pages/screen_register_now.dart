import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:makeatable/controller/customer.dart';
import 'package:makeatable/model/customer.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/pages/screen_reset_password.dart';
import 'package:makeatable/view/auth_module/widgets/my_button.dart';
import 'package:makeatable/view/auth_module/widgets/my_textfield.dart';
import 'package:get/get.dart';
import 'package:makeatable/view/auth_module/widgets/snackbar.dart';

class RegisterNow extends StatelessWidget {
  RegisterNow({super.key});
  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobilenumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmnewpassword = TextEditingController();

  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SafeArea(
        child: ListView(children: [
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Register Now',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(height: 20),
          MyTextField(
              controller: fullname, hintText: 'Full Name', obscureText: false),
          const SizedBox(height: 15),
          MyTextField(controller: email, hintText: 'Email', obscureText: false),
          const SizedBox(height: 15),
          MyTextField(
              controller: mobilenumber,
              hintText: 'Mobile Number',
              obscureText: false),
          const SizedBox(height: 15),
          MyTextField(
              controller: password, hintText: 'Password', obscureText: true),
          const SizedBox(height: 15),
          MyTextField(
              controller: confirmnewpassword,
              hintText: 'Confirm Password',
              obscureText: true),
          const SizedBox(
            height: 30,
          ),
          MyButton(
              onTap: () {
                registerUser(BuildContext);
              },
              clr: mRed,
              text: 'Register'),
        ]),
      ),
    );
  }

  Future<void> registerUser(BuildContext) async {
    // // form validation
    // if (fullname.text == '' ||
    //     email.text == '' ||
    //     mobilenumber.text == '' ||
    //     password.text == '' ||
    //     confirmnewpassword.text == '') {
    //   snackEmptyFields(context: BuildContext);
    //   return;
    // }

    // //
    // if (password.text != confirmnewpassword.text) {
    //   print("pass miss match");
    //   snack_wrong_pass(context: BuildContext);
    //   return;
    // }

    // if (!isStrongPassword(password.text)) {
    //   print("pass not strong");
    //   snack_wrong_pass(context: BuildContext);
    //   return;
    // }

    // if (!isEmailValid(email.text)) {
    //   print("mail format wrong");
    //   snack_wrong_user(context: BuildContext);
    //   return;
    // }

    // if (!isValidMobileNumber(mobilenumber.text)) {
    //   print("number format wrong");
    //   snack_wrong_user(context: BuildContext);
    //   return;
    // }

    // after validation
    User newUser = new User(
        fullName: fullname.text,
        email: email.text,
        mobileNumber: mobilenumber.text,
        password: password.text,
        preference: "VEG",
        userType: "CUSTOMER",
        status: "PENDING");

    bool isDone = await UserController().registreUser(newUser);
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
