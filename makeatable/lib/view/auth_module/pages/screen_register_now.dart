import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:makeatable/controller/userController.dart';
import 'package:makeatable/model/customer.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/pages/screen_login.dart';
import 'package:makeatable/view/auth_module/pages/screen_reset_password.dart';
import 'package:makeatable/view/auth_module/widgets/my_button.dart';
import 'package:makeatable/view/auth_module/widgets/my_textfield.dart';
import 'package:get/get.dart';
import 'package:makeatable/view/auth_module/widgets/snackbar.dart';

class RegisterNow extends StatelessWidget {
  RegisterNow({super.key});

  UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SafeArea(
        child: ListView(children: [
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Register Now',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(height: 20),
          MyTextField(
              controller: userController.fullname,
              hintText: 'Full Name',
              obscureText: false),
          const SizedBox(height: 15),
          MyTextField(
              controller: userController.email,
              hintText: 'Email',
              obscureText: false),
          const SizedBox(height: 15),
          MyTextField(
              controller: userController.mobilenumber,
              hintText: 'Mobile Number',
              obscureText: false),
          const SizedBox(height: 15),
          MyTextField(
              controller: userController.password,
              hintText: 'Password',
              obscureText: true),
          const SizedBox(height: 15),
          MyTextField(
              controller: userController.confirmnewpassword,
              hintText: 'Confirm Password',
              obscureText: true),
          const SizedBox(
            height: 30,
          ),
          Obx(
            () => Opacity(
              opacity: (userController.isLoading == true) ? 0.5 : 1,
              child: MyButton(
                  onTap: () async {
                    if (!userController.isLoading.value) {
                      userController.change();
                      if (await userController.registerUser(BuildContext)) {
                        Get.to(LoginPage());
                      }
                      userController.change();
                    }
                  },
                  clr: mRed,
                  text: (userController.isLoading == true)
                      ? 'Loading...'
                      : 'Register'),
            ),
          ),
        ]),
      ),
    );
  }
}
