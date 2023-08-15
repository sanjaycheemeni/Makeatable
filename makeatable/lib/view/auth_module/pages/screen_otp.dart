import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/pages/screen_reset_password.dart';
import 'package:makeatable/view/auth_module/widgets/my_button.dart';

class Otp extends StatelessWidget {
  Otp({super.key});
  TextEditingController tc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Enter the code sent to your Mail',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: OtpTextField(
              mainAxisAlignment: MainAxisAlignment.start,
              fillColor: Colors.grey.withOpacity(0.2),
              filled: true,
            ),
          ),
          const SizedBox(height: 30),
          MyButton(
              onTap: () {
                forgotPassword(tc.text);
              },
              clr: mRed,
              text: 'Verify'),
          SizedBox(height: 20),
          const Center(
            child: Text(
              'Didn’t recieve a confirmation code',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResetPassword()));
              },
              child: const Text(
                'Resend Code',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

forgotPassword(String mail) {
  print(mail);
}
