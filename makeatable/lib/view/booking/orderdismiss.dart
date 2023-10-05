import 'package:flutter/material.dart';

class OrderDismiss extends StatelessWidget {
  const OrderDismiss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 150),
                    Container(
                      height: 450,
                      width: 440,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/img.png',
                            height: 300,
                            width: 400,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Malabar Cafe',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins',
                              fontSize: 22,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Palazhi, calicut',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(249, 177, 177, 1),
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.1),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 180),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ooh! You \n Dismiss Order!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFD63D4F),
                            fontFamily: 'Poppins',
                            fontSize: 36,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                        Image.asset(
                          'images/Ellipse1.png',
                          height: 36,
                          width: 36,
                        ),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    // Perform the action when the button is pressed
                    print('Done button pressed');
                  },
                  child: Text('Done'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    minimumSize: MaterialStateProperty.all(Size(double.infinity,
                        50)), // Set the minimum width and height
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
