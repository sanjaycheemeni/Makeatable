import 'package:flutter/material.dart';
import 'package:makeatable/model/manager.dart';
import 'package:makeatable/view/shared/Widget.dart';
import 'package:makeatable/view/shared/managerBottomBar.dart';
import '../util/constants/color_constants.dart';

class ManagerHome extends StatelessWidget {
  const ManagerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 235, 235),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            searchbar(
                controller: new TextEditingController(),
                hintText: 'Search',
                obscureText: false),
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: foodList.length,
                  itemBuilder: (bc, i) {
                    return FoodCard(
                        isActive: foodList[i]['isActive'],
                        foodName: foodList[i]['foodName'],
                        foodPrice: foodList[i]['foodPrice'],
                        foodImage: foodList[i]['foodImage']);
                  }),
            )
          ]),
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
