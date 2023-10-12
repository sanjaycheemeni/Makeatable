import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/booking/booking_screen.dart';
import '../../product_list/widgets/my_button.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            SizedBox(height: 110),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: NetworkImage(
                    'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/szibqbilowlohydyk27b'),
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Item name",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            Text(
              "Price",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: mIconInactive,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            MyButton(
              onTap: () {
                Get.offAll(BookingPage());
              },
            ),
          ]),
        ),
      ),
    );
  }
}
