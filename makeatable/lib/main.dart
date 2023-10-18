import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:makeatable/controller/HomePageController.dart';
import 'package:makeatable/services/HomePageService.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/pages/screen_login.dart';
import 'package:makeatable/view/auth_module/pages/screen_register_now.dart';
import 'package:makeatable/view/auth_module/pages/screen_splash.dart';
import 'package:makeatable/view/homepage_module/pages/screen_home.dart';
import 'package:makeatable/view/screen_managerhome.dart';

void main() async {
  // HomePageController().fetchTopResto();

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
  await GetStorage.init();
  runApp(GetMaterialApp(
      theme: ThemeData(
          primaryColor: mRed,
          fontFamily: "Poppins",
          bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: Colors.black.withOpacity(0)),
          primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(
        isLogged: true,
      )));
}
