import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/view/menu/widgets/my_button.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(children: [
              SizedBox(height: 110),
              Image(
                image: AssetImage("images/biriyani.png"),
                width: 500,
                height: 370,
              ),
              SizedBox(height: 8),
              Text(
                "Item name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              Text(
                "Price",
                style: TextStyle(fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
                SizedBox(height:20),
                MyButton(onTap: signUserIn,),

            ]),
          ),
        ),
      ),
    );
  }
}