import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/profile/screen_profile_user.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  bool isVeg = true;
  TextEditingController _nameController = TextEditingController(text: 'Aswin');
  TextEditingController _phoneController =
      TextEditingController(text: '9000008765');

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(UserPage());
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.off(UserPage());
                    },
                    child: Icon(
                      Icons.check,
                      color: mRed,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  // Image.asset('images/img.png'),
                  Positioned(
                    top: 10,
                    child: Image.asset(
                      'images/img_1.png',
                      width: 117,
                      height: 117,
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 230,
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'images/Image40.png',
                        width: 37,
                        height: 37,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(27, 10, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'NAME',
                    style: TextStyle(
                      fontSize: 13,
                      color: mSubtitle,
                    ),
                  ),
                  // Add spacing between the label and the TextField
                  TextField(
                    controller: _nameController, // Bind the controller
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 292),
                      ),
                      hintText: 'Enter your name', // Placeholder text
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'PHONE NUMBER',
                    style: TextStyle(
                      fontSize: 13,
                      color: mSubtitle,
                    ),
                  ),
                  TextField(
                    controller: _phoneController, // Bind the controller
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 292),
                      ),
                      hintText: 'Enter your phone number', // Placeholder text
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'PREFERENCE',
                    style: TextStyle(
                      fontSize: 13,
                      color: mSubtitle,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: prefBlock(isVeg, 'Vegitarian       '),
              onTap: () {
                setState(() {
                  print(isVeg);

                  isVeg = true;
                });
              },
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              child: prefBlock(!isVeg, 'Non-vegitarian'),
              onTap: () {
                setState(() {
                  isVeg = false;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 145, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EMAIL ADDRESS',
                    style: TextStyle(
                      fontSize: 13,
                      color: mSubtitle,
                    ),
                  ),
                  Text(
                    'aswin@gmail.com',
                    style: TextStyle(
                      fontSize: 18,
                      color: mSubtitle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

prefBlock(bool isSelected, String title) {
  return Padding(
    padding: const EdgeInsets.all(0),
    child: Container(
      margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
      width: 307,
      height: 56,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 190, 190, 190),
            blurRadius: 5.0,
          ),
        ],
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: TextStyle(
                color: mRed, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 170,
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: isSelected ? mRedSahde : Color(0xFFA9A9A9),
            ),
            child: Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    color: isSelected ? mRed : Color(0xFF6a6a6a),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
