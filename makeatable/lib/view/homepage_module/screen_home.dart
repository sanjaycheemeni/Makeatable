import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/main.dart';
import 'package:makeatable/view/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user_name = "Sanjay";
    final size = MediaQuery.of(context).size;

    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const WelcomeMessage(name: "Sanjay"),
                const TitleHeading(
                  heading: "Reminder",
                ),

                // reminder box
                const ReminderCard(
                  location: "Palazhi, Calicut",
                  time: "01:00PM",
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(35, 10, 5, 2),
                  child: Text(
                    'Top rated',
                    style: TextStyle(color: Color.fromARGB(223, 109, 109, 109)),
                  ),
                ),
                Container(
                    height: 150,
                    color: Colors.white,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.only(left: 15, right: 10),
                      scrollDirection: Axis.horizontal,
                      children: [
                        topRatedFoodCard(
                            foodName: "Chicken Briyani",
                            price: "Rs 150",
                            imagePath: "images/chicken_biriyani.jpeg"),
                        topRatedFoodCard(
                            foodName: "Chicken Briyani",
                            price: "Rs 150",
                            imagePath: "images/chicken_biriyani.jpeg"),
                        topRatedFoodCard(
                            foodName: "Chicken Briyani",
                            price: "Rs 150",
                            imagePath: "images/chicken_biriyani.jpeg"),
                        topRatedFoodCard(
                            foodName: "Chicken Briyani",
                            price: "Rs 150",
                            imagePath: "images/chicken_biriyani.jpeg")
                      ],
                    )),
                // top rated cards [scroll]
              ],
            ),
          ),
          bottomNavigationBar: bottomBar()),
    );
  }
}

topRatedFoodCard(
    {required foodName, required String price, required imagePath}) {
  return Padding(
    padding: EdgeInsets.only(left: 10, right: 10),
    child: Container(
      color: Colors.black,
      width: 240,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 110, 0, 5),
            child: Text(
              'Chicken Biriyani ',
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 150, 0, 5),
            child: Text(
              'Rs 150',
              style: TextStyle(
                  color: Color.fromARGB(172, 255, 193, 7),
                  fontSize: 17,
                  fontWeight: FontWeight.w100),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget bottomBar() {
  return BottomNavigationBar(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    backgroundColor: Color(0xffFBEFE4),
    selectedItemColor: Color(0xFFE81514),
    unselectedItemColor: Color(0xFF667080),
    elevation: 0,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'icons/home.svg',
          color: Color(0xFFE81514),
        ),
        label: '',
      ),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'icons/search.svg',
            color: Color(0xFF667080),
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: SvgPicture.asset('icons/user.svg', color: Color(0xFF667080)),
          label: ''),
    ],
    currentIndex: 0,
  );
}
