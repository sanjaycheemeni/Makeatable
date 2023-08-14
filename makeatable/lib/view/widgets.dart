import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

// Title heading

class TitleHeading extends StatelessWidget {
  final String heading;
  const TitleHeading({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, top: 10),
      child: Text(
        heading,
        style: const TextStyle(color: Color.fromARGB(223, 109, 109, 109)),
      ),
    );
  }
}

// Reminder Card

class ReminderCard extends StatelessWidget {
  final String time;
  final String location;
  const ReminderCard({super.key, required this.time, required this.location});

  @override
  Widget build(BuildContext context) {
    Color iconColor = const Color.fromARGB(255, 255, 220, 220);
    Color labelColor = const Color.fromARGB(255, 255, 250, 250);

    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
      child: Container(
        height: 150,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), color: mRed),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your food will be ready',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              reminderItem(IconSet().clock, time),
              reminderItem(IconSet().location, location)
            ],
          ),
        ),
      ),
    );
  }

  reminderItem(String icon, String value) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 18,
          height: 18,
          color: mWhite,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          value,
          style: TextStyle(fontSize: 18, color: mWhite),
        )
      ],
    );
  }
}

// Custom Bottom Navigation Bar

class CustomBottomNavBar extends StatelessWidget {
  final selected;
  const CustomBottomNavBar({required this.selected, super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color(0xffFBEFE4),
      items: <BottomNavigationBarItem>[
        navBarItem(IconSet().home, selected == 0 ? true : false),
        navBarItem(IconSet().search, selected == 1 ? true : false),
        navBarItem(IconSet().user, selected == 2 ? true : false),
      ],
    );
  }

  navBarItem(String search, bool status) {
    return BottomNavigationBarItem(
        icon: SvgPicture.asset(
          search,
          color: status ? mIconActive : mIconInactive,
        ),
        label: '');
  }
}
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

// Top rated food card

class TopRatedCard extends StatelessWidget {
  final String foodName, price, imageLocation;
  const TopRatedCard(
      {required this.foodName,
      required this.price,
      required this.imageLocation,
      super.key});

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
                const Text(
                  '4.3',
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

class TopRestocard extends StatelessWidget {
  const TopRestocard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        width: 290,
        height: 80,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 202, 202, 202),
                  spreadRadius: 1,
                  blurRadius: 4)
            ],
            color: const Color(0xffFBEFE4),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Krishna Bhavan',
                  style: TextStyle(color: mBrown, fontSize: 18),
                ),
                Text(
                  'Palazhi, Pala',
                  style: TextStyle(color: mRed, fontSize: 14),
                )
              ]),
        ),
      ),
    );
  }
}

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
          child: const Text(
            'Juices',
            style: TextStyle(
                color: Color.fromRGBO(228, 228, 228, 1),
                fontWeight: FontWeight.w600),
          )),
    );
  }
}
