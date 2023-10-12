import 'package:flutter/material.dart';
import 'package:makeatable/util/constants/color_constants.dart';

class CatogaryCard extends StatelessWidget {
  const CatogaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return // Figma Flutter Generator Rectangle1498Widget - RECTANGLE
        Container(
      padding: EdgeInsets.all(10),
      height: 800,
      child: Container(
          padding: const EdgeInsets.all(10),
          width: 148,
          decoration: BoxDecoration(
            color: mRed,
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
                image: AssetImage('images/tea.png'),
                fit: BoxFit.cover,
                opacity: .9),
          ),
          child: Text(
            'Juices',
            style: TextStyle(
                color: Color.fromRGBO(228, 228, 228, 1),
                fontWeight: FontWeight.w600),
          )),
    );
  }
}
