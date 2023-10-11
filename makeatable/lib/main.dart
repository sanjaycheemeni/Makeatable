import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/pages/screen_splash.dart';


void main() {
  // runApp(const Splash());
  runApp(GetMaterialApp(
    theme: ThemeData(
        primaryColor: mRed,
        fontFamily: "Poppins",
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
        primarySwatch: Colors.red),
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}
