import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/util/constants/icon_constants.dart';

// Reminder Card

class ReminderCard extends StatelessWidget {
  final String time;
  final String location;
  const ReminderCard({super.key, required this.time, required this.location});

  @override
  Widget build(BuildContext context) {
    final iconColor = Color.fromARGB(255, 255, 220, 220);
    final labelColor = Color.fromARGB(255, 255, 250, 250);

    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
      child: Container(
        height: 150,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), color: mRed),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your food will be ready',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
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
          width: 18,
          height: 18,
          color: mWhite,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          value,
          style: TextStyle(fontSize: 18, color: mWhite),
        )
      ],
    );
  }
}
