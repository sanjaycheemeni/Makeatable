import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeatable/view/booking/booking_screen.dart';
import 'package:makeatable/view/shared/UserSearchFoodTile.dart';


class ProductList extends StatelessWidget {
  const ProductList({Key? key})
      : super(key: key); // This widget is the root// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "Poppins"),
        debugShowCheckedModeBanner:
            false, // home : new ListViewBuilder(), NO Need To Use Unnecessary New Keyword
        home: const ListViewBuilder());
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text("Restaurants",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black, fontSize: 25)),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return UserFoodCard(
                      isActive: true,
                      foodImage:
                          'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/pnmhhkx5hysaz6lpy9xy',
                      foodName: 'Resto name',
                      foodPrice: 'place',
                      ontap: () {
                        Get.off(BookingPage());
                      },
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
