import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeatable/controller/AuthController.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/pages/screen_forgot_password.dart';
import 'package:makeatable/view/auth_module/pages/screen_manager_register.dart';
import 'package:makeatable/view/auth_module/pages/screen_register_now.dart';
import 'package:makeatable/view/auth_module/widgets/my_button.dart';
import 'package:makeatable/view/auth_module/widgets/my_textfield.dart';
import 'package:makeatable/view/auth_module/widgets/snackbar.dart';
import 'package:makeatable/view/homepage_module/pages/screen_home.dart';
import 'package:makeatable/view/screen_managerhome.dart';

class LoginPage extends StatelessWidget {
  //new height width
  late double _deviceHeight;
  late double _deviceWidth;
  var _deviceTextSize;

  AuthController authController = new AuthController();
  LoginPage({super.key});

  //text editing controllers

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceTextSize = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              SizedBox(height: _deviceHeight * 0.03),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen(
                                    isLogged: false,
                                  )));
                    },
                    child: const Text(
                      "Skip Now",
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  SizedBox(width: _deviceWidth * 0.05),
                ],
              ),

              SizedBox(height: _deviceHeight * 0.16),

              //App Logo
              Image(
                image: AssetImage("images/logo.png"),
                height: _deviceHeight * 0.12,
              ),
              SizedBox(height: _deviceHeight * 0.03),

              //welcome back
              Center(
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: _deviceTextSize * 40),
                ),
              ),

              SizedBox(height: _deviceHeight * 0.05),

              //username textfield
              MyTextField(
                controller: authController.usernameController,
                hintText: 'Email',
                obscureText: false,
              ),
              SizedBox(
                height: _deviceHeight * 0.02,
              ),

              //password textfield
              MyTextField(
                  controller: authController.passwordController,
                  hintText: 'Password',
                  obscureText: true),

              SizedBox(
                height: _deviceHeight * 0.02,
              ),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext bc) => ForgotPassword()));
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: _deviceHeight * 0.03,
              ),

              //login button
              Obx(() => Opacity(
                  opacity: (authController.isLoading == true) ? 0.5 : 1,
                  child: MyButton(
                    onTap: () {
                      authController.logIn(context);
                    },
                    text: (authController.isLoading == true)
                        ? 'Loading...'
                        : 'Login',
                    clr: mRed,
                  ))),

              SizedBox(
                height: _deviceHeight * 0.02,
              ),

              Padding(
                padding: EdgeInsets.all(8.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text('Don\'t have an account     '),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterNow()));
                    },
                    child: const Text(
                      'Register Now',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ]),
              ),

              SizedBox(
                height: _deviceHeight * 0.01,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('are you a manager     '),
                    GestureDetector(
                      onTap: () {
                        Get.to(ManagerRegister());
                      },
                      child: const Text(
                        'Register Now',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
