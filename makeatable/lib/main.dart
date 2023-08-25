import 'package:flutter/material.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/pages/screen_manager_register.dart';
import 'package:makeatable/view/screen_managerhome.dart';

void main() {
  // runApp(const Splash());
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: mRed,
      fontFamily: "Poppins",
      bottomSheetTheme:
          BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
    ),
    debugShowCheckedModeBanner: false,
    home: ManagerHome(),
  ));
}
