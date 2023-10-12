import 'package:flutter/material.dart';

// Welcome Message widget

class WelcomeMessage extends StatelessWidget {
  late double _deviceHeight;
  late double _deviceWidth;
  var _deviceTextSize;

  final String name;
  WelcomeMessage({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceTextSize = MediaQuery.of(context).textScaleFactor;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '👋 Hai,',
            style: TextStyle(
              fontSize: _deviceTextSize * 24,
            ),
          ),
          Text(
            name + "!",
            style: TextStyle(
                fontSize: _deviceTextSize * 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
