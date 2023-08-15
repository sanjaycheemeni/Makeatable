import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/util/constants/icon_constants.dart';

// Welcome Message widget

class WelcomeMessage extends StatelessWidget {
  final String name;
  const WelcomeMessage({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            '👋 Hai,',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Text(
            name + "!",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
