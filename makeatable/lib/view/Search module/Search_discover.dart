import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/shared/widgets.dart';

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
        body: Column(
          children: [
            Container(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 45, 35, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TopMessage(name: " "),
                      Center(
                        child: Container(
                          child: Icon(Icons.filter_alt),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 5, 15, 15),
              child: SearchBarWidget(),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TopRatedCard(foodName: 'foodName', price: 'price', imageLocation: 'imageLocation'),
                  TopRatedCard(foodName: 'foodName', price: 'price', imageLocation: 'imageLocation'),
                  TopRatedCard(foodName: 'foodName', price: 'price', imageLocation: 'imageLocation')
                ],
              ),
            )
            // ListView(
            //   scrollDirection: Axis.horizontal,
            //   children: [
            //      // Text('dasas'),
            //      TopRatedCard(foodName: 'foodName', price: 'price', imageLocation: 'imageLocation')
            //   ],
            // ),
            ,Container(
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 0),
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Row(
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
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 290,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  LongBar(foodName: 'foodName', price: 'price', imageLocation: 'imageLocation'),
                  LongBar(foodName: 'foodName', price: 'price', imageLocation: 'imageLocation'),
                  LongBar(foodName: 'foodName', price: 'price', imageLocation: 'imageLocation'),
                  LongBar(foodName: 'foodName', price: 'price', imageLocation: 'imageLocation')
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
