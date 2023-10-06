import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/util/constants/icon_constants.dart';

// Reminder Card

class ReminderCard extends StatelessWidget {
  late double _deviceHeight;
  late double _deviceWidth;
  var _deviceTextSize;
  final String time;
  final String location;
  ReminderCard({super.key, required this.time, required this.location});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceTextSize = MediaQuery.of(context).textScaleFactor;
    final iconColor = Color.fromARGB(255, 255, 220, 220);
    final labelColor = Color.fromARGB(255, 255, 250, 250);

    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
      child: Container(
        height: _deviceHeight * 0.15,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), color: mRed),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your food will be ready',
                style: TextStyle(
                    fontSize: _deviceTextSize * 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: _deviceHeight * 0.01,
              ),
              reminderItem(IconSet().clock, time),
              reminderItem(IconSet().location, location)
            ],
          ),
        ),
      ),
    );
  }

  reminderItem(String icon, String value) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: _deviceWidth * 0.02,
          height: _deviceHeight * 0.02,
          color: mWhite,
        ),
        SizedBox(
          width: _deviceWidth * 0.02,
        ),
        Text(
          value,
          style: TextStyle(fontSize: _deviceTextSize * 16, color: mWhite),
        )
      ],
    );
  }
}
