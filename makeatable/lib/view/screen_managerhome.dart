import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/view/shared/Widget.dart';
import '../util/constants/color_constants.dart';

class ManagerHome extends StatelessWidget {
  const ManagerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 235, 235),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const searchbar(
              controller: null,
              hintText: 'Search',
              obscureText: false,
            ),
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 80,
                itemBuilder: (BuildContext b, int i) {
                  return FoodCard(
                      isActive: true,
                      foodName: 'foodName',
                      foodPrice: 'foodPrice');
                })
          ],
        ),
      ),
      bottomNavigationBar: bottomBar(0),
      floatingActionButton: FloatingActionButton(
        backgroundColor: mRed,
        child: Icon(
          Icons.add,
          size: 35,
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Addfood(
              value: '',
            ),
          );
        },
      ),
    );
  }
}

Widget bottomBar(index) {
  return BottomNavigationBar(
    showSelectedLabels: false,
    showUnselectedLabels: false,
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
