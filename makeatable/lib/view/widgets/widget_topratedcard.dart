import 'package:flutter/material.dart';
// Top rated food card

class TopRatedCard extends StatelessWidget {
  late double _deviceHeight;
  late double _deviceWidth;
  var _deviceTextSize;
  final String foodName, price, imageLocation;
  TopRatedCard(
      {required this.foodName,
      required this.price,
      required this.imageLocation,
      super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceTextSize = MediaQuery.of(context).textScaleFactor;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: _deviceHeight * 0.27,
        width: _deviceWidth * 0.7,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 202, 202, 202),
                  spreadRadius: 1,
                  blurRadius: 4)
            ],
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(8)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            alignment: Alignment.topRight,
            height: _deviceHeight * 0.17,
            width: _deviceWidth * 0.7,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/chicken_biriyani.jpeg'))),
            child: Container(
              margin: const EdgeInsets.only(top: 10, right: 10),
              width: _deviceWidth * 0.1,
              height: _deviceHeight * 0.03,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 53, 100, 255),
                  borderRadius: BorderRadius.circular(5)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'images/star.png',
                  height: _deviceHeight * 0.03,
                  width: _deviceWidth * 0.03,
                  color: Colors.white,
                ),
                const Text(
                  '4.3',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, top: 8),
            child: Text(
              'Chicken Biriyani',
              style: TextStyle(
                  fontSize: _deviceTextSize * 20, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Paragon Hotel',
              style: TextStyle(
                  fontSize: _deviceTextSize * 15,
                  color: Color.fromARGB(95, 43, 43, 43)),
            ),
          )
        ]),
      ),
    );
  }
}
