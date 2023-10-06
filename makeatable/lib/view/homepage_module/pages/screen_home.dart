import 'dart:core';
import 'package:flutter/material.dart';
import 'package:makeatable/view/SearchResult/Widgets/bottomnavbar.dart';
import '../../widgets/widget_catogerycard.dart';
import '../../widgets/widget_custombottombar.dart';
import '../../widgets/widget_remindercard.dart';
import '../../widgets/widget_sizedblock.dart';
import '../../widgets/widget_titleheading.dart';
import '../../widgets/widget_topratedcard.dart';
import '../../widgets/widget_toprestocard.dart';
import '../../widgets/widget_welcomemessage.dart';

class HomeScreen extends StatelessWidget {
  late double _deviceHeight;
  late double _deviceWidth;
  final bool isLogged;
  HomeScreen({required this.isLogged, super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    // Data from DB

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            // View Starts
            const wBlock(10),
            // welcome msg
            isLogged
                ? WelcomeMessage(name: ' Rafi')
                : WelcomeMessage(name: ' get Your Food'),

            // Reminder section
            isLogged
                ? const TitleHeading(heading: 'Reminder')
                : SizedBox(
                    height: _deviceHeight * 0.00,
                  ),
            isLogged
                ? ReminderCard(time: 'time', location: 'location')
                : SizedBox(
                    height: _deviceHeight * 0.00,
                  ),

            // top rated section [list of Top rated foods]
            const TitleHeading(heading: 'Top Rated'),
            const hBlock(10),
            SizedBox(
                height: _deviceHeight * 0.27,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (c, i) {
                    return TopRatedCard(
                        foodName: 'foodName',
                        price: 'price',
                        imageLocation: 'imageLocation');
                  },
                )),

            // Top Resto. section[list of top rated restros.]
            const TitleHeading(heading: 'Top Restaurants'),
            const hBlock(10),
            SizedBox(
                height: _deviceHeight * 0.10,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (c, i) {
                      return TopRestocard();
                    })),

            // Catagory section
            const TitleHeading(heading: 'Category'),
            const hBlock(10),
            GridView.builder(
                shrinkWrap: true,
                itemCount: 7,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (c, i) {
                  return const CatogaryCard();
                }),
            SizedBox(
              height: 20,
              child: GestureDetector(
                onTap: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Explore now',
                      style:
                          TextStyle(color: Color.fromARGB(255, 190, 190, 190)),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color.fromARGB(255, 190, 190, 190),
                    )
                  ],
                ),
              ),
            ),
            const hBlock(10)
          ],
        ), // Catagory section
        bottomNavigationBar: UserbottomBar(
          index: 00,
        ));
  }
}
