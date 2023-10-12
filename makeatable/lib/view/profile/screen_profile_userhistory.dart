import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Userhistory extends StatelessWidget {
  final int maxRating = 5;
  const Userhistory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.logout_outlined,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset('images/img.png'),
                  Positioned(
                    top: 230,
                    child: Image.asset(
                      'images/img_1.png',
                      width: 117,
                      height: 117,
                    ),
                  ),
                  Positioned(
                    top: 305,
                    left: 210,
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'images/Image40.png',
                        width: 37,
                        height: 37,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 300,
                    left: 320,
                    child: GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        "icons/star.svg",
                        color: Color(0xFFE81514),
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Aswin',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'aswin@gmail.com',
                  style: TextStyle(fontSize: 15, color: Color(0xFFBCBCBC)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(
                        0xFFD9D9D9), // Adjust the color of the left button
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15.5), // Half of the height
                    ),
                    minimumSize: Size(143, 31),
                  ),
                  child: Text(
                    'Active Booking',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFFE81514), // Adjust the text color
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(
                        0xFFFFEECC), // Adjust the color of the right button
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15.5), // Half of the height
                    ),
                    minimumSize: Size(143, 31),
                  ),
                  child: Text(
                    'History',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFFE81514), // Adjust the text color
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(
                        0xFFFFEECC), // Adjust the color of the left button
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15.5), // Half of the height
                    ),
                    minimumSize: Size(164, 179),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/img_4.png',
                        width: 80,
                        height: 80,
                      ),
                      Text(
                        'Paris Hostel',
                        style: TextStyle(
                          color: Color(0xFF000000), // Adjust the text color
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.0),
                        child: Container(
                          height: 1.0,
                          width: 130,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Star Rating ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF667080),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'images/img_5.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'images/img_5.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'images/img_5.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'images/img_5.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'images/img_5.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 51,
                            width: 1,
                            color: Colors.black,
                          ),
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Review Rating ',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFF667080),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'images/img_5.png',
                                            width: 10,
                                            height: 10,
                                          ),
                                          Image.asset(
                                            'images/img_5.png',
                                            width: 10,
                                            height: 10,
                                          ),
                                          Image.asset(
                                            'images/img_5.png',
                                            width: 10,
                                            height: 10,
                                          ),
                                          Image.asset(
                                            'images/img_5.png',
                                            width: 10,
                                            height: 10,
                                          ),
                                          Image.asset(
                                            'images/img_5.png',
                                            width: 10,
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.0),
                        child: Container(
                          height: 1.0,
                          width: 130,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(
                        0xFFFFEECC), // Adjust the color of the left button
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15.5), // Half of the height
                    ),
                    minimumSize: Size(164, 179),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/img_4.png',
                        width: 80,
                        height: 80,
                      ),
                      Text(
                        'Paris Hostel',
                        style: TextStyle(
                          color: Color(0xFF000000), // Adjust the text color
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.0),
                        child: Container(
                          height: 1.0,
                          width: 130,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Star Rating ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF667080),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'images/img_5.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'images/img_5.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'images/img_5.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'images/img_5.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'images/img_5.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 51,
                            width: 1,
                            color: Colors.black,
                          ),
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Review Rating ',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFF667080),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'images/img_5.png',
                                            width: 10,
                                            height: 10,
                                          ),
                                          Image.asset(
                                            'images/img_5.png',
                                            width: 10,
                                            height: 10,
                                          ),
                                          Image.asset(
                                            'images/img_5.png',
                                            width: 10,
                                            height: 10,
                                          ),
                                          Image.asset(
                                            'images/img_5.png',
                                            width: 10,
                                            height: 10,
                                          ),
                                          Image.asset(
                                            'images/img_5.png',
                                            width: 10,
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.0),
                        child: Container(
                          height: 1.0,
                          width: 130,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
