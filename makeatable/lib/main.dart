import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/pages/screen_login.dart';
import 'package:makeatable/view/auth_module/pages/screen_register_now.dart';

void main() {
  // print(UserService().write(
  //     "sanjay", "sanjay@test.com", "12345789", "9495273251", "CUSTOMER"));

  // print(UserController().registreUser(new User(
  //     fullName: "fullName",
  //     email: "email",
  //     password: "password",
  //     mobileNumber: "mobileNumber",
  //     userType: "userType",
  //     preference: "VEG",
  //     status: "status")));

  // runApp(const Splash());
  runApp(GetMaterialApp(
    theme: ThemeData(
        primaryColor: mRed,
        fontFamily: "Poppins",
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
        primarySwatch: Colors.red),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
