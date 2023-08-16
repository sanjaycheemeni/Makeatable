import 'package:flutter/cupertino.dart';
<<<<<<< HEAD
import 'package:flutter/material.dart';
<<<<<<< HEAD
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
    home: HomeScreen(
      isLogged: true,
    ),
  ));
  // runApp(ForgotPassword());
  // runApp(CheckMail());
  // runApp(ResetPassword());
  // runApp(RegisterNow());
  // runApp(Otp());
}
=======
import 'package:makeatable/view/product_list/product_list.dart';
import 'package:makeatable/view/menu/page/menu.dart';


void main() {
  runApp( ProductList());
}

>>>>>>> bd88b72cbebcc644795e60f2f68ba8ed970045f8
=======
import 'package:makeatable/view/AddButton.dart';
import 'package:makeatable/view/screen_managerhome.dart';

main(){
  runApp(Managerhome ());
}
>>>>>>> 48745fa9e13148f96c501dc13c1a4508078a0445
