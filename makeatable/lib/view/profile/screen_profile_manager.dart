import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';

class Manager extends StatelessWidget {
  const Manager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 360,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(
                    'images/img.png', // Replace with your first image asset path
                    width: 375, // Adjust the width of the image as needed
                    height: 298, // Adjust the height of the image as needed
                  ),
                  Positioned(
                    top: 230,
                    child: Image.asset(
                      'images/img_2.png', // Replace with your second image asset path
                      width: 117, // Adjust the width of the image as needed
                      height: 117, // Adjust the height of the image as needed
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Malabar Cafe',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'malabar@gmail.com',
              style: TextStyle(fontSize: 15, color: Color(0xFFBCBCBC)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.all(14.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(fontSize: 23, color: Color(0xFFFA1111)),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      fixedSize: Size(255, 46),
                      backgroundColor: Color(0xFFFFEECC)),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.all(14.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Log Out',
                    style: TextStyle(fontSize: 23, color: Color(0xFFFFEECC)),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      fixedSize: Size(255, 46),
                      backgroundColor: Color(0xFFFA1111)),
                )),
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
