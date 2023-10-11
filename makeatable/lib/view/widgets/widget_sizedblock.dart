import 'package:flutter/material.dart';

// Horizontal sizedbox

class hBlock extends StatelessWidget {
  final double height;
  const hBlock(
    this.height, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

//  vertical sizedbox

class wBlock extends StatelessWidget {
  final double width;
  const wBlock(
    this.width, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width,
    );
  }
}
