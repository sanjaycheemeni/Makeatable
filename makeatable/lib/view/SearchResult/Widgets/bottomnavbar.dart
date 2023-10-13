import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/SearchResult/Pages/screen_search_result_main.dart';
import 'package:makeatable/view/profile/screen_profile_user.dart';

import '../../homepage_module/pages/screen_home.dart';

class UserbottomBar extends StatelessWidget {
  final int index;
  const UserbottomBar({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color(0xffFFFFFF),
      selectedItemColor: Color(0xFFE81514),
      unselectedItemColor: Color(0xFF1956B7),

      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'icons/home.svg',
            color: (index == 0) ? mIconActive : mIconInactive,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'icons/search.svg',
            color: (index == 1)
                ? mIconActive
                : mIconInactive, // Change the color here
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'icons/user.svg',
            color: (index == 2) ? mIconActive : mIconInactive,
          ),
          label: '',
        ),
      ],
      currentIndex: index,
      onTap: (index) {
        if (index == 0)
          Get.off(HomeScreen(
            isLogged: true,
          ));
        if (index == 1) Get.off(Homepage());
        if (index == 2) Get.off(UserPage());
      }, // Call the provided onTap callback
    );
  }
}
