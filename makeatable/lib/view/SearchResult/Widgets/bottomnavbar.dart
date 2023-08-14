import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class bottomBar extends StatelessWidget {
 final Function(int) onTap;
 final int index;
      const bottomBar( {
        super.key,
        required this.index,
        required this.onTap,
});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color(0xffFFFFFF),
      selectedItemColor: Color(0xFFE81514),
      unselectedItemColor: Color(0xFF1956B7),

      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset('icons/home.svg', color: Color(0xFF667080)),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'icons/search.svg',
            color: Color(0xFFE81514), // Change the color here
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'icons/user.svg',
            color: Color(0xFF667080),
          ),
          label: '',
        ),
      ],
      currentIndex: index,
      onTap: onTap, // Call the provided onTap callback
    );
  }

}


// class BottomBar extends StatelessWidget {
//
//   final String val;
//   final Function()?
//    BottomBar({required String this.val,super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//
//     return const Placeholder();
//   }
// }
