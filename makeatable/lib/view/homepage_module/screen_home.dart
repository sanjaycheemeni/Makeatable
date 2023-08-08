import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
          body: SafeArea(
            child: Container(
              width: size.width,
              height: size.height,
              color: Colors.white,
              child: ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text(
                          '👋 Hai,',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          ' Sanjay!',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(35, 10, 5, 2),
                    child: Text(
                      'Reminder',
                      style:
                          TextStyle(color: Color.fromARGB(223, 109, 109, 109)),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Container(
                        width: size.width - 100,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.red),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: bottomBar(0)),
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
          icon: SvgPicture.asset('icons/home.svg'), label: ''),
      BottomNavigationBarItem(
          icon: SvgPicture.asset('icons/home.svg'), label: ''),
    ],
    currentIndex: index,
  );
}
