import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../util/constants/color_constants.dart';

//search

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
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xFFFCDFDF)),

            ),
           /* prefixIcon: Align(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Icon(
              Icons.arrow_back_ios,
              ),
            ),*/
            suffixIcon:Icon(
              Icons.search,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
//


//top rated card
class TopRatedCard extends StatelessWidget {
  final String foodName, price, imageLocation;
  final Function() onclick;
  const TopRatedCard(
      {required this.foodName,
        required this.price,
        required this.onclick,
        required this.imageLocation,
        super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageLocation),opacity: .4,
                fit: BoxFit.cover),
            color: Color(0xaa000000),
            borderRadius: BorderRadius.circular(12)),
        width: 175,
        height: 185,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 115, 0, 5),
              child: Text(
                foodName,
                style: TextStyle(
                  backgroundColor: Color(0x00000094),
                    color: Colors.amber.shade400,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(15, 140, 0, 15),
              child: Text(
                price,
                style: TextStyle(
                    color: Color.fromARGB(172, 255, 193, 7),
                    fontSize: 17,
                    fontWeight: FontWeight.w100),
              ),
            ),
          ],
        ),
      )
    );
  }
}


