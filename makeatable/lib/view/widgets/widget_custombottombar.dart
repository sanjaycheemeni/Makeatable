import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/util/constants/icon_constants.dart';
import 'package:makeatable/view/homepage_module/pages/screen_home.dart';

import '../Search module/pages/Search_discover.dart';
import '../profile/screen_profile_user.dart';

// Custom Bottom Navigation Bar

class CustomBottomNavBar extends StatelessWidget {
  final selected, isLogged;
  const CustomBottomNavBar(
      {required this.selected, required this.isLogged, super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        if (index == 0) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeScreen(
                        isLogged: isLogged,
                      )));
        }
        if (index == 1) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => MainSearchpage()));
        }
        if (index == 2) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => User()));
        }
      },
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color(0xffFBEFE4),
      items: <BottomNavigationBarItem>[
        navBarItem(IconSet().home, selected == 0 ? true : false),
        navBarItem(IconSet().search, selected == 1 ? true : false),
        navBarItem(
          IconSet().user,
          selected == 2 ? true : false,
        ),
      ],
    );
  }

  navBarItem(String search, bool status) {
    return BottomNavigationBarItem(
        icon: SvgPicture.asset(
          search,
          color: status ? mIconActive : mIconInactive,
        ),
        label: '');
  }
}
