import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/util/constants/icon_constants.dart';

// Custom Bottom Navigation Bar

class CustomBottomNavBar extends StatelessWidget {
  final selected;
  const CustomBottomNavBar({required this.selected, super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {},
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
