import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/SearchResult/Pages/screen_search_result_main.dart';
import 'package:makeatable/view/auth_module/widgets/my_button.dart';
import 'package:makeatable/view/booking/orderconfirm.dart';
import 'package:makeatable/view/booking/room.dart';
import 'package:makeatable/view/booking/widget.dart';
import 'package:makeatable/view/widgets/widget_titleheading.dart';
import 'package:makeatable/view/widgets/widget_welcomemessage.dart';
import 'package:numberpicker/numberpicker.dart';

import 'number_page.dart';

class BookingPage extends StatefulWidget {
  BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  late double _deviceHeight;
  late double _deviceWidth;
  var _deviceTextSize;
  var _currentValue = 1;
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceTextSize = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        body: SafeArea(
          child: ListView(children: [
            SizedBox(
              height: _deviceHeight * 0.02,
            ),

            // cus appbar
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: _deviceWidth * 0.04,
                ),
                GestureDetector(
                  onTap: () {
                    Get.off(Homepage());
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 30,
                  ),
                ),

                //
                SizedBox(
                  width: _deviceWidth * 0.08,
                ),
              ],
            ),
            SizedBox(
              height: _deviceHeight * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/mz69ogfrejetsashmlrz',
                      height: _deviceHeight * 0.2,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                SizedBox(
                  height: _deviceHeight * 0.03,
                ),
                Text(
                  'Malabar cafe',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: _deviceHeight * 0.01,
            ),
            //

            // date picking
            TitleHeading(heading: 'Choose Date'),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                  color: Color.fromARGB(255, 255, 255, 255)),
              child: DatePicker(
                DateTime.now(),
                height: _deviceHeight * 0.11,
                width: _deviceWidth * 0.2,
                initialSelectedDate: DateTime.now(),
                selectionColor: Color.fromARGB(255, 255, 0, 0),
                selectedTextColor: Colors.white,
                daysCount: 7,
              ),
            ),

            // Time picking
            TitleHeading(heading: 'Choose Time'),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              margin: EdgeInsets.only(left: 25, right: 25),
              width: _deviceWidth * 0.5,
              height: _deviceHeight * 0.09,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(9)),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: GestureDetector(
                  // style: ElevatedButton.styleFrom(
                  //     backgroundColor: Color.fromARGB(255, 255, 255, 255)),
                  onTap: () {
                    const ();
                  },
                  child: const Widget01()),
            ),

            //
            TitleHeading(heading: 'Choose Room Type'),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: _deviceHeight * 0.09,
              width: _deviceWidth * 0.10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Room Type'), DropdownButtonExample1()],
              ),
            ),

            TitleHeading(heading: 'Choose No of Seats'),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: _deviceHeight * 0.09,
              width: _deviceWidth * 0.10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Number of seats'),
                  Tooltip(
                    message: 'Slide to select',
                    triggerMode: TooltipTriggerMode.tap,
                    child: NumberPicker(
                      itemHeight: _deviceHeight * 0.07,
                      itemWidth: _deviceWidth * 0.15,
                      axis: Axis.horizontal,
                      value: _currentValue,
                      minValue: 1,
                      maxValue: 12,
                      itemCount: 4,
                      onChanged: (value) =>
                          setState(() => _currentValue = value),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: _deviceHeight * 0.03,
            ),
            MyButton(
                onTap: () {
                  Get.off(OrderConfirm());
                },
                clr: mRed,
                text: 'Book Seat'),
            SizedBox(
              height: _deviceHeight * 0.02,
            ),
          ]),
        ));
  }
}

/**
 * 
 * 
 * 
 * 
 * 
 * 
 * const Text(
              'Select Date',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                  color: Color.fromARGB(255, 255, 255, 255)),
              child: DatePicker(
                DateTime.now(),
                height: 100,
                width: 80,
                initialSelectedDate: DateTime.now(),
                selectionColor: Color.fromARGB(255, 255, 0, 0),
                selectedTextColor: Colors.white,
              ),
            ),
            const Text(
              'Check In',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(9)),
                color: Color(0xFFFEE4E4),
              ),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFEE4E4)),
                  onPressed: () {
                    const ();
                  },
                  child: const Widget01()),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text(
                      'Type of Room',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        height: 50,
                        width: 160,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            color: Color(0xFFFEE4E4)),
                        child: const DropdownButtonExample1()),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'Number of person',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        height: 50,
                        width: 160,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            color: Color(0xFFFEE4E4)),
                        child: const DropdownButtonExample2()),
                  ],
                )
              ],
            ),
 * 
 * 
 * 
 * / */
