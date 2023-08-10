import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            //app logo
            Container(
                height: 100,
                child: Container(
                  child: Image.asset(
                    "images/logo.png",
                    height: 10,
                    fit: BoxFit.contain,
                  ),
                )),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 170,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 30,
                    //mail icon
                    child: SvgPicture.asset(
                      "icons/mail.svg",
                      height: 20,
                      width: 20,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: 350,
                    //uername textfield
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        filled: true,
                        hintText: "Email",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
