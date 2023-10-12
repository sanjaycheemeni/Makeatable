//import 'dart:js_util';
//import 'widgets/image_list.dart;';
//import 'package:http/http.dart'
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../util/constants/color_constants.dart';

class Managerhome extends StatelessWidget {
  const Managerhome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 90),
              SvgPicture.asset('images/Biriyani.webp'),
              Text('Biriyani'),
              Text('Price'),
              Text(
                'data',
                style: TextStyle(color: Colors.cyan, fontSize: 12),
              )
            ],
          ),
        ),
        bottomNavigationBar: bottomBar(0),
      ),
    );
  }
}

Widget bottomBar(index) {
  return BottomNavigationBar(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    backgroundColor: mYellow,
    selectedItemColor: mYellow,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'icons/home.svg',
          color: mIconActive,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'icons/plus-circle.svg',
          color: mIconInactive,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'icons/clock.svg',
          color: mIconInactive,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'icons/user.svg',
          color: mIconInactive,
        ),
        label: '',
      ),
    ],
    unselectedItemColor: mYellow,
    currentIndex: index,
  );
}
