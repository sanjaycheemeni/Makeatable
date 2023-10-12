import 'package:flutter/material.dart';
import 'package:makeatable/view/shared/orderDetailsBottomSheet.dart';

import '../../util/constants/color_constants.dart';

class OrderListTile extends StatelessWidget {
  final foodName, userName, orderDate, isDelivered;
  const OrderListTile(
      {required String this.foodName,
      required bool this.isDelivered,
      required String this.userName,
      required String this.orderDate,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => OrderdetailsDialog(
                  isDelivered: isDelivered,
                  foodName: foodName,
                  orderDate: orderDate,
                  userName: userName,
                  roomtype: '2 Seats | Non-AC | Family'));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          alignment: Alignment.center,
          height: 100,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          foodName,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        isDelivered
                            ? Icon(
                                Icons.verified,
                                size: 17,
                                color: Colors.green,
                              )
                            : Icon(
                                Icons.error_rounded,
                                size: 17,
                                color: Colors.red,
                              )
                      ],
                    ),
                    Text(
                      userName,
                      style: TextStyle(color: mIconInactive, fontSize: 20),
                    ),
                    Text(
                      orderDate,
                      style: TextStyle(color: mIconInactive, fontSize: 15),
                    )
                  ],
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ]),
        ),
      ),
    );
  }
}
