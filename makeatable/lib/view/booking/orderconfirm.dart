import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/SearchResult/Pages/screen_search_result_main.dart';

class OrderConfirm extends StatefulWidget {
  const OrderConfirm({Key? key}) : super(key: key);

  @override
  State<OrderConfirm> createState() => _OrderConfirmState();
}

class _OrderConfirmState extends State<OrderConfirm> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('animations/orderConfirm.json'),
              Text(
                'Booking Confirmed!',
                style: TextStyle(
                    fontSize: 29,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
