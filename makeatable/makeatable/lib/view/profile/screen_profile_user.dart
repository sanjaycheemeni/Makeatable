import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class User extends StatelessWidget {
  const User({super.key});

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
                  SvgPicture.asset(
                    "icons/arrow-left.svg",
                    width: 25,
                    height: 25,
                  ),
                  SvgPicture.asset(
                    "icons/log-out.svg",
                    width: 25,
                    height: 25,
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
                    primary: Color(
                        0xFFFFEECC), // Adjust the color of the left button
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
                    primary: Color(
                        0xFFD9D9D9), // Adjust the color of the right button
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
                    primary: Color(
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
                        'Malabar Cafe',
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
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Date: ',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              Text(
                                '08/08/2023',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Color(
                                      0xFF667080), // Adjust the text color
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Time: ',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Text(
                            '02:00 PM',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF667080), // Adjust the text color
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(
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
                            'Malabar Cafe',
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
                          SizedBox(
                            height: 8,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                  Text(
                                    '08/08/2023',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Color(
                                          0xFF667080), // Adjust the text color
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Time: ',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              Text(
                                '02:00 PM',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Color(
                                      0xFF667080), // Adjust the text color
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 14,
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
