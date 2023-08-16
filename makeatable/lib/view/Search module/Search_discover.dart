import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/shared/widgets.dart';
import 'package:makeatable/view/shared/Filter.dart';

class mainsearchpage extends StatefulWidget {
  const mainsearchpage({super.key});

  @override
  State<mainsearchpage> createState() => _mainsearchpageState();
}

class _mainsearchpageState extends State<mainsearchpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
        backgroundColor: const Color(0xfffff1f1),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 45, 20, 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TopMessage(name: " "),
                  filterbutton(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
              child: SearchBarWidget(),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  TopRatedCard(foodName: 'foodName', price: 'price', imageLocation: 'images/Biriyani.webp'),
                  TopRatedCard(foodName: 'foodName', price: 'price', imageLocation: 'images/Beef Chilli.jpg'),
                  TopRatedCard(foodName: 'foodName', price: 'price', imageLocation: 'images/BeefFry004.jpg')
                ],
              ),
            )
            ,Container(
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 0),
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Recent",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 290,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: const [
                  LongBar(foodName: 'Biriyani', price: '₹150', imageLocation: 'images/Biriyani.webp'),
                  LongBar(foodName: 'meals', price: '₹50', imageLocation: 'images/Beef Chilli.jpg'),
                  LongBar(foodName: 'Dosa', price: '₹60', imageLocation: 'images/Masala Dosa.jpg'),
                  LongBar(foodName: 'Geerice', price: '₹70', imageLocation: 'imageLocation')
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: const CustomBottomNavBar(),
      ),
    );
  }
}

