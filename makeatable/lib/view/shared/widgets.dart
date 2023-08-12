import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/util/constants/icon_constants.dart';

// Color
final app = AppColors();

// Welcome Message widget

class TopMessage extends StatelessWidget {
  final String name;
  const TopMessage({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0,0,0,0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Discover',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
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
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        'Recent',
        style: TextStyle(color: Color.fromARGB(223, 109, 109, 109)),
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

    return Container(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
      width: 450,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: app.mRed),
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
          ],
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
          color: AppColors().mWhite,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          value,
          style: TextStyle(fontSize: 18, color: AppColors().mWhite),
        )
      ],
    );
  }
}

// Custom Bottom Navigation Bar

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color(0xffFBEFE4),
      items: <BottomNavigationBarItem>[
        navBarItem(IconSet().home, false),
        navBarItem(IconSet().search, false),
        navBarItem(IconSet().user, false),
      ],
    );
  }

  navBarItem(String search, bool status) {
    return BottomNavigationBarItem(
        icon: SvgPicture.asset(
          search,
          color: status ? AppColors().mIconActive : AppColors().mIconInactive,
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
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/chicken_biriyani.jpeg'),
                fit: BoxFit.cover),
            color: Color(0xaa000000),
            borderRadius: BorderRadius.circular(10)),
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        width: 200,
        child: const Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 115, 0, 5),
              child: Text(
                'foodName',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 140, 0, 15),
              child: Text(
                'price',
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
}
//Long Bar
class LongBar extends StatelessWidget {
  final String foodName, price, imageLocation;
  const LongBar(
      {required this.foodName,
        required this.price,
        required this.imageLocation,
        super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/chicken_biriyani.jpeg'),
                fit: BoxFit.cover),
            color: Color(0xaa000000),
            borderRadius: BorderRadius.circular(10)),
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        width: 400, height: 75,
        child: const Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(75, 15, 0, 5),
              child: Text(
                'foodName',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(75, 40, 0, 15),
              child: Text(
                'price',
                style: TextStyle(
                    color: Color.fromARGB(172, 255, 193, 7),
                    fontSize: 15,
                    fontWeight: FontWeight.w100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Search bar
class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onChanged: (query) {
          // Handle the search query here
          print('Search query: $query');
        },
      ),
    );
  }
}