//import 'dart:js_util';
//import 'widgets/image_list.dart;';
//import 'package:http/http.dart'
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/view/shared/Widget.dart';
import '../util/constants/color_constants.dart';

class Managerhome extends StatelessWidget {
  const Managerhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            const searchbar(
              controller: null,
              hintText: 'Search',
              obscureText: false,
            ),
            SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: mRed),
                        alignment: Alignment.center,
                        width: 180,
                        height: 60,
                        child: Text(
                          "All",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )),
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: mBackGround),
                        alignment: Alignment.center,
                        width: 180,
                        height: 60,
                        child: Text(
                          "Disabled",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                height: 617,
                child: ListView(
                    padding: EdgeInsets.only(top: 10),
                    physics: BouncingScrollPhysics(),
                    children: [
                      Row(
                        children: [
                          TopRatedCard(
                              onclick: () {},
                              foodName: 'Biriyani',
                              price: '₹200',
                              imageLocation: 'images/chicken_biriyani.jpeg'),
                          TopRatedCard(
                              onclick: () {},
                              foodName: 'Pizza',
                              price: '₹150',
                              imageLocation: 'images/chicken_biriyani.jpeg'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          TopRatedCard(
                              onclick: () {},
                              foodName: 'Chicken Fry',
                              price: '₹80',
                              imageLocation: 'images/chicken_biriyani.jpeg'),
                          TopRatedCard(
                            onclick: () {},
                            foodName: 'French Fries',
                            price: '₹120',
                            imageLocation: ('images/chicken_biriyani.jpeg'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          TopRatedCard(
                              onclick: () {},
                              foodName: 'Masala Dosa',
                              price: '₹50',
                              imageLocation: 'images/chicken_biriyani.jpeg'),
                          TopRatedCard(
                              onclick: () {},
                              foodName: 'CheeseBurger',
                              price: '₹70',
                              imageLocation: 'images/chicken_biriyani.jpeg'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          TopRatedCard(
                              onclick: () {},
                              foodName: 'Beef Chilli',
                              price: '₹160',
                              imageLocation: 'images/chicken_biriyani.jpeg'),
                          TopRatedCard(
                              onclick: () {},
                              foodName: 'Beef Fry',
                              price: '₹90',
                              imageLocation: 'images/chicken_biriyani.jpeg'),
                        ],
                      ),
                    ])),
          ],
        ),
      ),
      bottomNavigationBar: bottomBar(0),
    );
  }
}

Widget bottomBar(index) {
  return BottomNavigationBar(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    backgroundColor: mYellow,
    selectedItemColor: mYellow,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'icons/home.svg',
          color: mIconActive,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'icons/plus-circle.svg',
          color: mIconInactive,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'icons/clock.svg',
          color: mIconInactive,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'icons/user.svg',
          color: mIconInactive,
        ),
        label: '',
      ),
    ],
    unselectedItemColor: mYellow,
    currentIndex: index,
  );
}

/*
padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
height: 617,
child: ListView(padding: EdgeInsets.only(top: 10),
physics: BouncingScrollPhysics(),
children: [
Row(
children: [
TopRatedCard(foodName: 'Biriyani', price:'₹200' , imageLocation: 'imageLocation'),
TopRatedCard(foodName: 'Pizza', price:'₹150' , imageLocation: 'imageLocation'),
],
),
SizedBox(height: 10,),
Row(
children: [
TopRatedCard(foodName: 'Chicken Fry', price:'₹80' , imageLocation: 'imageLocation'),
TopRatedCard(foodName: 'French Fries', price:'₹120' , imageLocation: 'imageLocation'),
],
),
SizedBox(height: 10,),
Row(
children: [
TopRatedCard(foodName: 'Masala Dosa', price:'₹50' , imageLocation: 'imageLocation'),
TopRatedCard(foodName: 'Burger', price:'₹70' , imageLocation: 'imageLocation'),
],
),
SizedBox(height: 10,),
Row(
children: [
TopRatedCard(foodName: 'Beef Chilli', price:'₹160' , imageLocation: 'imageLocation'),
TopRatedCard(foodName: 'Beef Fry', price:'₹90' , imageLocation: 'imageLocation'),
],
),
]
)
)

]),*/
