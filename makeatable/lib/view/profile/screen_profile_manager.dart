import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/pages/screen_login.dart';
import 'package:makeatable/view/auth_module/widgets/my_button.dart';
import 'package:makeatable/view/profile/screen_profile_editmanager.dart';
import 'package:makeatable/view/shared/managerBottomBar.dart';

class Manager extends StatelessWidget {
  const Manager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
            width: MediaQuery.of(context).size.width,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/mz69ogfrejetsashmlrz',
              height: 200,
              width: MediaQuery.of(context).size.width - 90,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Malabar cafe',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Text(
            'malabarcafe@gmail.com',
            style: TextStyle(fontSize: 15, color: mIconInactive),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
              padding: const EdgeInsets.all(14.0),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(EditManagerProfile());
                },
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                      fontSize: 23, color: Color.fromARGB(255, 255, 0, 0)),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(255, 46),
                    backgroundColor: Color.fromARGB(255, 241, 241, 241)),
              )),
          Padding(
              padding: const EdgeInsets.all(14.0),
              child: ElevatedButton(
                onPressed: () {
                  Get.off(LoginPage(), transition: Transition.fade);
                },
                child: Text(
                  'Log Out',
                  style: TextStyle(
                      fontSize: 23, color: Color.fromARGB(255, 255, 255, 255)),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(255, 46),
                    backgroundColor: Color(0xFFFA1111)),
              )),
        ],
      )),
      bottomNavigationBar: bottomBar(2),
    );
  }
}
