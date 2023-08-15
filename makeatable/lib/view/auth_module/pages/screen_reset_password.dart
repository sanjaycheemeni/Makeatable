import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/widgets/my_button.dart';
import 'package:makeatable/view/auth_module/widgets/my_textfield.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  //text editing controllers
  var newpassword = TextEditingController();
  var confirmnewpassword = TextEditingController();

  @override
  Widget build(BuildContext) {
    return GetMaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff0f0f0),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Reset Password',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Please enter your new password\nand confirm',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 30),
            MyTextField(
                controller: newpassword,
                hintText: 'New Password',
                obscureText: true),
            SizedBox(height: 20),
            MyTextField(
                controller: confirmnewpassword,
                hintText: 'Confirm New Password',
                obscureText: true),
            const SizedBox(
              height: 30,
            ),
            MyButton(
                onTap: () {
                  print("object");
                },
                clr: mRed,
                text: 'Login'),
          ]),
        ),
      ),
    );
  }
}
