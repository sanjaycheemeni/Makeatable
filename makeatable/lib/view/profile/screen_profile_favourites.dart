import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "icons/arrow-left.svg",
                    width: 25,
                    height: 25,
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    'Favourites',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.8),
              child: MaterialButton(
                height: 60,
                color: mYellow,
                onPressed: () {},
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Malabar Restaurant',
                          style: TextStyle(fontSize: 20, color: mBlack),
                        ),
                        Text(
                          'palazhi, Calicut',
                          style: TextStyle(fontSize: 15, color: mYellow),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Image.asset(
                      'images/img_3.png',
                      width: 25,
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.8),
              child: MaterialButton(
                height: 60,
                color: mYellow,
                onPressed: () {},
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Malabar Restaurant',
                          style: TextStyle(fontSize: 20, color: mBlack),
                        ),
                        Text(
                          'palazhi, Calicut',
                          style: TextStyle(fontSize: 15, color: mYellow),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Image.asset(
                      'images/img_3.png',
                      width: 25,
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.8),
              child: MaterialButton(
                height: 60,
                color: mYellow,
                onPressed: () {},
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Malabar Restaurant',
                          style: TextStyle(fontSize: 20, color: mBlack),
                        ),
                        Text(
                          'palazhi, Calicut',
                          style: TextStyle(fontSize: 15, color: mYellow),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Image.asset(
                      'images/img_3.png',
                      width: 25,
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.8),
              child: MaterialButton(
                height: 60,
                color: mYellow,
                onPressed: () {},
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Malabar Restaurant',
                          style: TextStyle(fontSize: 20, color: mBlack),
                        ),
                        Text(
                          'palazhi, Calicut',
                          style: TextStyle(fontSize: 15, color: mYellow),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Image.asset(
                      'images/img_3.png',
                      width: 25,
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
        bottomNavigationBar: bottomBar(0),
      ),
    );
  }
}

Widget bottomBar(index) {
  return BottomNavigationBar(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    backgroundColor: Color(0xffFBEFE4),
    selectedItemColor: Color(0xFFE81514),
    unselectedItemColor: Color(0xFF667080),
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: SvgPicture.asset('icons/home.svg'),
        label: '',
      ),
      BottomNavigationBarItem(
          icon: SvgPicture.asset('icons/search.svg'), label: ''),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'icons/user.svg',
            color: Color(0xFFE81514),
          ),
          label: ''),
    ],
    currentIndex: index,
  );
}
