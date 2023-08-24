import 'package:flutter/material.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/Onckick.dart';
import 'package:makeatable/view/auth_module/pages/screen_manager_register.dart';

void main() {
  // runApp(const Splash());
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: mRed, fontFamily: "Poppins"),
    debugShowCheckedModeBanner: false,
    home: Managerhome(),
  ));
}
