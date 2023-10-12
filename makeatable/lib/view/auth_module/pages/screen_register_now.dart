import 'package:flutter/material.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/pages/screen_reset_password.dart';
import 'package:makeatable/view/auth_module/widgets/my_button.dart';
import 'package:makeatable/view/auth_module/widgets/my_textfield.dart';
import 'package:get/get.dart';

class RegisterNow extends StatelessWidget {
  RegisterNow({super.key});
  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobilenumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmnewpassword = TextEditingController();

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
              controller: fullname, hintText: 'Full Name', obscureText: false),
          const SizedBox(height: 15),
          MyTextField(controller: email, hintText: 'Email', obscureText: false),
          const SizedBox(height: 15),
          MyTextField(
              controller: mobilenumber,
              hintText: 'Mobile Number',
              obscureText: false),
          const SizedBox(height: 15),
          MyTextField(
              controller: password, hintText: 'Password', obscureText: true),
          const SizedBox(height: 15),
          MyTextField(
              controller: confirmnewpassword,
              hintText: 'Confirm Password',
              obscureText: true),
          const SizedBox(
            height: 30,
          ),
          MyButton(
              onTap: () {
                Get.to(ResetPassword());
              },
              clr: mRed,
              text: 'Register'),
        ]),
      ),
    );
  }
}
