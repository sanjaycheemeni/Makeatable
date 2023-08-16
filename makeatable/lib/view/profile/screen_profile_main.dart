import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController con = new TextEditingController();
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text('username'),
            ),
            Container(
              child:
                  TextField(decoration: InputDecoration(hintText: 'Username')),
            ),
            Container(
              child: Text('Password'),
            ),
            Container(
              child: TextField(
                controller: con,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
            ),
            Container(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  print(con.text);
                },
                child: Text('Login'),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
