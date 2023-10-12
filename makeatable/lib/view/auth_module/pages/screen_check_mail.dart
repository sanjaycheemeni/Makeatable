import 'package:flutter/material.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/widgets/my_button.dart';

class CheckMail extends StatelessWidget {
  CheckMail({super.key});
  TextEditingController tc = TextEditingController();

  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Check your Mail',
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
              'We have sent a reset password link\nto your registered email',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 30),
          MyButton(
              onTap: () {
                forgotPassword(tc.text);
              },
              clr: mRed,
              text: 'Check Mail')
        ]),
      ),
    );
  }
}

forgotPassword(String mail) {
  print(mail);
}
