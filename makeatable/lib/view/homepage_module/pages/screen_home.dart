import 'dart:core';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeatable/controller/HomePageController.dart';
import 'package:makeatable/controller/userController.dart';
import 'package:makeatable/services/constants.dart';
import 'package:makeatable/view/SearchResult/Widgets/bottomnavbar.dart';
import '../../widgets/widget_catogerycard.dart';
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

  HomePageController homePageController = Get.put(HomePageController());
  HomeScreen({required this.isLogged, super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    int gridItemCount = (_deviceWidth / 100).round().toInt();
    print(gridItemCount);

    // Data from DB

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            // View Starts
            const wBlock(10),
            // welcome msg
            Obx(() => WelcomeMessage(
                  name: homePageController.userName.value,
                )),

            // Reminder section
            isLogged
                ? const TitleHeading(heading: 'Reminder')
                : SizedBox(
                    height: 00,
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
                child: Obx(
                  () => ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: homePageController.top5Food.length,
                    itemBuilder: (c, i) {
                      return TopRatedCard(
                          rating:
                              homePageController.top5Food[i].rating.toString(),
                          foodName: homePageController.top5Food[i].name,
                          price:
                              homePageController.top5Food[i].price.toString(),
                          imageLocation: base_url +
                              "/" +
                              homePageController.top5Food[i].imageUrl);
                    },
                  ),
                )),

            // Top Resto. section[list of top rated restros.]
            const TitleHeading(heading: 'Top Restaurants'),
            const hBlock(10),
            SizedBox(
                height: 80,
                child: Obx(
                  () => ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: homePageController.top5Resto.length,
                      itemBuilder: (c, i) {
                        // print(homePageController.top5Resto[i].fullName);
                        return TopRestocard(
                          restoName: homePageController.top5Resto[i].fullName,
                          location: homePageController.top5Resto[i].location,
                        );
                      }),
                )),

            // Catagory section
            const TitleHeading(heading: 'Category'),
            const hBlock(10),
            GridView.builder(
                shrinkWrap: true,
                itemCount: 7,
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: gridItemCount),
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
