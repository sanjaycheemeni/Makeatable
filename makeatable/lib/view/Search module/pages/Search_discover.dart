import 'package:flutter/material.dart';
import 'package:makeatable/view/shared/Filter.dart';
import 'package:makeatable/view/shared/Widget.dart';
import 'package:makeatable/view/shared/managetOrderListTile.dart';

import '../../shared/UserSearchFoodTile.dart';
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
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 45, 20, 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TopMessage(name: "Discover"),
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
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
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
            margin: EdgeInsets.only(left: 20, top: 15),
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
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              itemCount: 9,
              itemBuilder: (b, i) {
                return UserFoodCard(
                    isActive: true,
                    foodImage:
                        'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/em9fdvyzojbku52rcu5q',
                    foodName: 'foodName',
                    foodPrice: 'foodPrice');
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selected: 1,
        isLogged: true,
      ),
    );
  }
}
