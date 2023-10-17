import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/util/constants/icon_constants.dart';
// Top rated food card

class TopRatedCard extends StatelessWidget {
  final String foodName, price, imageLocation, rating;
  const TopRatedCard(
      {required this.foodName,
      required this.price,
      required this.imageLocation,
      super.key,
      required String this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 280,
        width: 290,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 202, 202, 202),
                  spreadRadius: 1,
                  blurRadius: 4)
            ],
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(8)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            alignment: Alignment.topRight,
            width: 290,
            height: 150,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/chicken_biriyani.jpeg'))),
            child: Container(
              margin: const EdgeInsets.only(top: 10, right: 10),
              width: 40,
              height: 25,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 53, 100, 255),
                  borderRadius: BorderRadius.circular(5)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'images/star.png',
                  height: 12,
                  width: 12,
                  color: Colors.white,
                ),
                Text(
                  rating,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 8),
            child: Text(
              'Chicken Biriyani',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Paragon Hotel',
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(95, 43, 43, 43)),
            ),
          )
        ]),
      ),
    );
  }
}
