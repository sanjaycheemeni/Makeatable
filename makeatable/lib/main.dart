import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/Search%20module/pages/Search_discover.dart';
import 'package:makeatable/view/SearchResult/Pages/screen_search_result_main.dart';
import 'package:makeatable/view/auth_module/pages/screen_login.dart';
import 'package:makeatable/view/auth_module/pages/screen_manager_register.dart';
import 'package:makeatable/view/auth_module/pages/screen_splash.dart';
import 'package:makeatable/view/booking/booking_screen.dart';
import 'package:makeatable/view/booking/orderconfirm.dart';
import 'package:makeatable/view/manger_history/screen_orderScanning.dart';
import 'package:makeatable/view/menu/page/menu.dart';
import 'package:makeatable/view/product_list/product_list.dart';
import 'package:makeatable/view/profile/screen_profile_editmanager.dart';
import 'package:makeatable/view/profile/screen_profile_user.dart';

import 'view/profile/screen_profile_manager.dart';

void main() {
  // runApp(const Splash());
  runApp(GetMaterialApp(
    theme: ThemeData(
        primaryColor: mRed,
        fontFamily: "Poppins",
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
        primarySwatch: Colors.red),
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}
