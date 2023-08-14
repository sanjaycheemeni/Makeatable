import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class searchbar extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const searchbar({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        // textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.bottom,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(5.0),

            ),
            prefixIcon: Align(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Icon(
                Icons.arrow_back_ios,
              ),
            ),
            suffixIcon:Icon(
              Icons.search,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Color(0xFFFCDFDF),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}