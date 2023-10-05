import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:makeatable/view/manger_history/screeen_mangaerhistory.dart';
import 'package:makeatable/view/profile/screen_profile_manager.dart';

import '../../util/constants/color_constants.dart';
import '../auth_module/pages/screen_login.dart';
import '../screen_managerhome.dart';

Widget bottomBar(index) {
  return BottomNavigationBar(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    selectedItemColor: mYellow,
    onTap: (i) {
      print('object');
      if (i == 0) Get.off(ManagerHome(), transition: Transition.leftToRight);
      if (i == 1) Get.off(ManagerHistory(), transition: Transition.native);
      if (i == 2) Get.off(Manager(), transition: Transition.rightToLeft);
    },
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
          'icons/clock.svg',
          color: (index == 1) ? mIconActive : mIconInactive,
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
    unselectedItemColor: mYellow,
    currentIndex: index,
  );
}
