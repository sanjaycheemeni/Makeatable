import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../util/constants/color_constants.dart';

class UserFoodCard extends StatelessWidget {
  final isActive;
  final foodName;
  final foodPrice;
  final foodImage;
  final Function()? ontap;
  const UserFoodCard(
      {required bool this.isActive,
      required String this.foodImage,
      required String this.foodName,
      required String this.foodPrice,
      Function()? this.ontap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isActive ? 1 : .5,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: GestureDetector(
          onTap: () {
            ontap!();
          },
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8)),
                    child: Image.network(
                      foodImage,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        'Rs ' + foodPrice,
                        style: TextStyle(color: mIconInactive, fontSize: 15),
                      )
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
