import 'package:flutter/material.dart';
import 'package:makeatable/view/shared/Filter.dart';

import '../../widgets/widget_custombottombar.dart';
import '../shared/widgets.dart';

class MainSearchpage extends StatefulWidget {
  const MainSearchpage({super.key});

  @override
  State<MainSearchpage> createState() => _mainsearchpageState();
}

class _mainsearchpageState extends State<MainSearchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff2f2),
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
                TopRatedCard(
                    foodName: 'foodName',
                    price: 'price',
                    imageLocation: 'imageLocation'),
                TopRatedCard(
                    foodName: 'foodName',
                    price: 'price',
                    imageLocation: 'imageLocation'),
                TopRatedCard(
                    foodName: 'foodName',
                    price: 'price',
                    imageLocation: 'imageLocation')
              ],
            ),
          ),
          Container(
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
                LongBar(
                    foodName: 'Biriyani',
                    price: '₹150',
                    imageLocation: 'imageLocation'),
                LongBar(
                    foodName: 'meals',
                    price: '₹50',
                    imageLocation: 'imageLocation'),
                LongBar(
                    foodName: 'Dosa',
                    price: '₹60',
                    imageLocation: 'imageLocation'),
                LongBar(
                    foodName: 'Geerice',
                    price: '₹70',
                    imageLocation: 'imageLocation')
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selected: 0,
        isLogged: true,
      ),
    );
  }
}
