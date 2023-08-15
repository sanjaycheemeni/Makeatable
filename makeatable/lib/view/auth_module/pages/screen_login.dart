import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/pages/screen_forgot_password.dart';
import 'package:makeatable/view/auth_module/pages/screen_register_now.dart';
import 'package:makeatable/view/auth_module/widgets/my_button.dart';
import 'package:makeatable/view/auth_module/widgets/my_textfield.dart';
import 'package:makeatable/view/auth_module/widgets/snackbar.dart';
import 'package:makeatable/view/homepage_module/pages/screen_home.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              const SizedBox(height: 20),

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
                  const SizedBox(width: 20),
                ],
              ),

              const SizedBox(height: 40),

              //App Logo
              const Image(
                image: AssetImage("images/logo.png"),
                height: 100,
              ),
              const SizedBox(height: 30),

              //welcome back
              Center(
                child: const Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),

              const SizedBox(height: 50),

              //username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),

              //password textfield
              MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true),

              const SizedBox(
                height: 20,
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

              const SizedBox(
                height: 60,
              ),

              //login button
              MyButton(
                onTap: () {
                  if (usernameController.text == "Rafi@mpro.com") {
                    if (passwordController.text == "123") {
                      snack_success(context: context);

                      Timer(Duration(seconds: 2), () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext bc) => HomeScreen(
                                  isLogged: true,
                                )));
                      });
                    } else {
                      //  wrong passs
                      snack_wrong_pass(context: context);
                    }
                  } else {
                    //  user failed
                    snack_wrong_user(context: context);
                  }
                },
                text: 'Login',
                clr: mRed,
              ),

              const SizedBox(
                height: 20,
              ),

              Center(child: const Text('or continue with')),

              const SizedBox(
                height: 20,
              ),

              //google signin
              GestureDetector(
                  onTap: () {
                    print("continue with google");
                  },
                  child: SvgPicture.asset('images/google.svg')),
              const SizedBox(
                height: 50,
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

              const SizedBox(
                height: 8,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('are you a manager     '),
                    GestureDetector(
                      onTap: () {
                        print("are you a manager");
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
