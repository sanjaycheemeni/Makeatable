import 'package:flutter/material.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/profile/screen_profile_main.dart';

void main() {
  // runApp(const Splash());
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: mRed, fontFamily: "Poppins"),
    debugShowCheckedModeBanner: false,
    home: BookingScreen(),
  ));
  // runApp(ForgotPassword());
  // runApp(CheckMail());
  // runApp(ResetPassword());
  // runApp(RegisterNow());
  // runApp(Otp());
}
