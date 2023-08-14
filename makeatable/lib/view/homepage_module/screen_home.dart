import 'dart:core';
import 'package:flutter/material.dart';
import 'package:makeatable/model/homepage.dart';
import 'package:makeatable/view/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Data from DB
    final hp = HomepageModel();

    return MaterialApp(
        theme: ThemeData(fontFamily: "Poppins"),
        home: Scaffold(
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              // View Starts
              const wBlock(10),
              // welcome msg
              const WelcomeMessage(name: 'Sanju'),

              // Reminder section
              const TitleHeading(heading: 'Reminder'),
              const ReminderCard(time: 'time', location: 'location'),

              // top rated section [list of Top rated foods]
              const TitleHeading(heading: 'Top Rated'),
              const hBlock(10),
              SizedBox(
                  height: 200,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (c, i) {
                      return const TopRatedCard(
                          foodName: 'foodName',
                          price: 'price',
                          imageLocation: 'imageLocation');
                    },
                  )),

              // Top Resto. section[list of top rated restros.]
              const TitleHeading(heading: 'Top Restaurants'),
              const hBlock(10),
              SizedBox(
                  height: 80,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (c, i) {
                        return const TopRestocard();
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
              const SizedBox(
                height: 20,
              )
            ],
          ), // Catagory section
          bottomNavigationBar: const CustomBottomNavBar(selected: 0),
        ));
  }
}
