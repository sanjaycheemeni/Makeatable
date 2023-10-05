import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:makeatable/model/manager.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/manger_history/screen_orderScanning.dart';
import 'package:makeatable/view/shared/Widget.dart';
import 'package:makeatable/view/shared/managerBottomBar.dart';
import 'package:makeatable/view/shared/managetOrderListTile.dart';

class ManagerHistory extends StatefulWidget {
  const ManagerHistory({Key? key}) : super(key: key);

  @override
  _ManagerHistoryState createState() => _ManagerHistoryState();
}

class _ManagerHistoryState extends State<ManagerHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 235, 235),
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          searchbar(
              controller: new TextEditingController(),
              hintText: 'Search order',
              obscureText: false),
          Expanded(
            child: ListView.builder(
                itemCount: orders.length,
                itemBuilder: (builcontext, index) {
                  return OrderListTile(
                    isDelivered: orders[index]['isDelivered'],
                    foodName: orders[index]['foodName'],
                    orderDate: orders[index]['orderDate'],
                    userName: orders[index]['userName'],
                  );
                }),
          )
        ]),
      ),
      bottomNavigationBar: bottomBar(1),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(ManagerQRScan());
        },
        backgroundColor: mRed,
        label: Text(
          'Scan',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
        icon: Icon(Icons.qr_code_scanner),
      ),
    );
  }
}
