import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/view/homepage_module/screen_home.dart';

void main() {
  runApp(const HomeScreen());
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

//  test section

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    int cur = 0;
    return MaterialApp(
      home: Scaffold(
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'icons/home.svg',
                  color: Colors.red,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('icons/home.svg'), label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('icons/home.svg'), label: ''),
          ],
          selectedItemColor: Colors.red,
          currentIndex: 1,
          onTap: (n) {
            setState(() {
              cur = n;
            });
          },
        ),
      ),
    );
  }
}
