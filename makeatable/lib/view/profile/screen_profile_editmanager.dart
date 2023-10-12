import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeatable/view/profile/screen_profile_manager.dart';

import '../../util/constants/color_constants.dart';
import '../auth_module/widgets/my_textfield.dart';

class EditManagerProfile extends StatelessWidget {
  const EditManagerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.off(Manager());
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 30,
                  ),
                ),

                //
                const SizedBox(
                  width: 150,
                ),
                GestureDetector(
                  onTap: () {
                    Get.off(Manager());
                  },
                  child: Icon(
                    Icons.check,
                    color: mRed,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  height: 20,
                ),
                Imagepicker(),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                    controller: new TextEditingController(),
                    hintText: 'Restaurant name',
                    obscureText: false),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                    controller: new TextEditingController(),
                    hintText: 'Email',
                    obscureText: false),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                    controller: new TextEditingController(),
                    hintText: 'Phone',
                    obscureText: false),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                    controller: new TextEditingController(),
                    hintText: 'Email',
                    obscureText: false),
                SizedBox(
                  height: 20,
                ),
                LocationInputText(
                    controller: new TextEditingController(),
                    hintText: 'Location',
                    obscureText: false),
                SizedBox(
                  height: 20,
                ),
                TimePickerText(
                  hintText: 'Start Time',
                  controller: TextEditingController(),
                ),
                SizedBox(
                  height: 20,
                ),
                TimePickerText(
                  hintText: 'End Time',
                  controller: TextEditingController(),
                ),
                SizedBox(
                  height: 20,
                ),
                RoomTypeInput(
                  controller: TextEditingController(),
                  hintText: 'Room type',
                ),
                SizedBox(
                  height: 20,
                ),
                SeatTextfield(
                  controller: TextEditingController(),
                  hintText: 'Seating Capacity',
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
