import 'dart:core';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:makeatable/model/homepage.dart';
import 'package:makeatable/view/widgets/widget_custombottombar.dart';

import '../../Search module/shared/widgets.dart';
import '../../widgets/widget_catogerycard.dart';
import '../../widgets/widget_toprestocard.dart';
import '../../widgets/widget_welcomemessage.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLogged = true;
    // Data from DB
    final hp = HomepageModel();

    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "Poppins"),
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              // View Starts
              const wBlock(10),
              // welcome msg
              isLogged
                  ? WelcomeMessage(name: 'Sanju')
                  : WelcomeMessage(name: 'get Your Food'),

              // Reminder section
              isLogged
                  ? const TitleHeading(heading: 'Remijknbnm,mnmnder')
                  : SizedBox(
                      height: 0,
                    ),
              isLogged
                  ? ReminderCard(time: 'time', location: 'location')
                  : SizedBox(
                      height: 0,
                    ),

              // top rated section [list of Top rated foods]
              const TitleHeading(heading: 'Top Rated'),
              const hBlock(10),
              SizedBox(
                  height: 240,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
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
              const SizedBox(
                child: Row(
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
                height: 20,
              ),
              hBlock(10)
            ],
          ), // Catagory section
          bottomNavigationBar:
              const CustomBottomNavBar(selected: 0, isLogged: true),
        ));
  }
}
