import 'package:flutter/material.dart';

import '../../util/constants/color_constants.dart';
import '../auth_module/widgets/my_button.dart';

class OrderdetailsDialog extends StatelessWidget {
  final foodName, orderDate, userName, roomtype, isDelivered;

  const OrderdetailsDialog(
      {required bool this.isDelivered,
      required String this.foodName,
      required String this.orderDate,
      required String this.userName,
      required String this.roomtype,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      height: 320 + MediaQuery.of(context).viewInsets.bottom + 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 233, 233, 233)),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Oder Details',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: mRed),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: 220,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 216, 216, 216),
                borderRadius: BorderRadius.circular(10)),
            height: 35,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              isDelivered
                  ? Icon(
                      Icons.verified,
                      size: 19,
                      color: Colors.green,
                    )
                  : Icon(
                      Icons.error_rounded,
                      size: 19,
                      color: Colors.red,
                    ),
              Text(
                isDelivered ? ' Delivered!' : ' Yet to Delivered',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              )
            ]),
          ),
          Text(
            foodName,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            orderDate,
            style: TextStyle(fontSize: 18, color: mIconInactive),
          ),
          SizedBox(
            height: 20,
          ),
          Text(userName,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          Text(roomtype, style: TextStyle(fontSize: 18, color: mIconInactive)),
          SizedBox(
            height: 15,
          ),
          MyButton(onTap: () {}, clr: mRed, text: 'Done')
        ],
      ),
    );
  }
}
