import 'package:flutter/material.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/auth_module/widgets/my_button.dart';
import 'package:makeatable/view/auth_module/widgets/my_textfield.dart';

class ManagerRegister extends StatelessWidget {
  const ManagerRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SafeArea(
          child: ListView(
        children: [
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Register Restaurant',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
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
          MyButton(onTap: () {}, clr: mRed, text: 'Register'),
          SizedBox(
            height: 40,
          ),
        ],
      )),
    );
  }
}
