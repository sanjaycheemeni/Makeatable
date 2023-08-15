import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/widgets/my_button.dart';
import 'package:makeatable/view/auth_module/widgets/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //sign user in
  void SignUserIn() {
    print('object');
  }

  //text editing controllers
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfff0f0f0),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Skip Now");
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
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),

                const SizedBox(height: 50),

                //username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 25,
                ),

                //password textfield
                MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true),

                const SizedBox(
                  height: 25,
                ),

                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Forgot Password?");
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
                  onTap: SignUserIn,
                  text: 'Login',
                  clr: mRed,
                ),

                const SizedBox(
                  height: 20,
                ),

                const Text('or continue with'),

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
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account     '),
                        GestureDetector(
                          onTap: () {
                            print("Register Now");
                          },
                          child: const Text(
                            'Register Now',
                            style:
                                TextStyle(decoration: TextDecoration.underline),
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
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
