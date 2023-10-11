import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';

class Addbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              SizedBox(height: 90),
              SvgPicture.asset('icons/image.svg',
                  height: 150, width: 150, color: Colors.black),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Price',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SizedBox(
                  height: 90,
                  child: TextField(
                    maxLines: null,
                    expands: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      labelText: 'Description',
                    ),
                  ),
                ),
              ),

              ElevatedButton(
                  onPressed: () {},
                  child: Text('ADD'),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.red,
                      minimumSize: Size(200, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)))),
            ],
          ),
        ),
        bottomNavigationBar: bottomBar(0),
      ),
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
          color: mIconInactive,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'icons/plus-circle.svg',
          color: mIconActive,
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
