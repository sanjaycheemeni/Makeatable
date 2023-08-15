import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/util/constants/icon_constants.dart';

class TopRestocard extends StatelessWidget {
  const TopRestocard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        width: 290,
        height: 80,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 202, 202, 202),
                  spreadRadius: 1,
                  blurRadius: 4)
            ],
            color: const Color(0xffFBEFE4),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Krishna Bhavan',
                  style: TextStyle(color: mBrown, fontSize: 18),
                ),
                Text(
                  'Palazhi, Pala',
                  style: TextStyle(color: mRed, fontSize: 14),
                )
              ]),
        ),
      ),
    );
  }
}
