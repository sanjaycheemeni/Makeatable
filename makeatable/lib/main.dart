import 'package:flutter/material.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/pages/screen_check_mail.dart';
import 'package:makeatable/view/auth_module/pages/screen_login.dart';
import 'package:makeatable/view/auth_module/pages/screen_otp.dart';
import 'package:makeatable/view/auth_module/pages/screen_register_now.dart';
import 'package:makeatable/view/auth_module/pages/screen_reset_password.dart';
import 'package:makeatable/view/auth_module/pages/screen_splash.dart';
import 'package:makeatable/view/auth_module/pages/screen_forgot_password.dart';
import 'package:makeatable/view/homepage_module/pages/screen_home.dart';

void main() {
  // runApp(const Splash());
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: mRed, fontFamily: "Poppins"),
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
  // runApp(ForgotPassword());
  // runApp(CheckMail());
  // runApp(ResetPassword());
  // runApp(RegisterNow());
  // runApp(Otp());
}
