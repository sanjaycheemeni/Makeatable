import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';

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
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "icons/arrow-left.svg",
                    width: 25,
                    height: 25,
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    'Edit Profile',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  SvgPicture.asset(
                    "icons/check.svg",
                    width: 25,
                    height: 25,
                    color: mIconActive,
                  ),
                ],
              ),
            ),
            Container(
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 20,
                    child: Image.asset(
                      'images/img_1.png',
                      width: 117,
                      height: 117,
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 200,
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
                    child: Container(
                      height: 1.0,
                      width: 280.0,
                      color: mIconInactive,
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
                    child: Container(
                      height: 1.0,
                      width: 280.0,
                      color: mIconInactive,
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
              padding: EdgeInsets.fromLTRB(10, 10, 145, 10),
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
        bottomNavigationBar: bottomBar(0),
      ),
    );
  }
}

Widget bottomBar(index) {
  return BottomNavigationBar(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    backgroundColor: Color(0xffFBEFE4),
    selectedItemColor: Color(0xFFE81514),
    unselectedItemColor: Color(0xFF667080),
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: SvgPicture.asset('icons/home.svg'),
        label: '',
      ),
      BottomNavigationBarItem(
          icon: SvgPicture.asset('icons/search.svg'), label: ''),
      BottomNavigationBarItem(
          icon: SvgPicture.asset('icons/user.svg'), label: ''),
    ],
    currentIndex: index,
  );
}

prefBlock(bool isSelected, String title) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
    width: 307,
    height: 56,
    decoration: BoxDecoration(
      color: Color(0xFFD9D9D9),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: 20,
        ),
        Text(title),
        const SizedBox(
          width: 140,
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isSelected ? mRedSahde : Color(0xFFA9A9A9),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: isSelected ? mRed : Color(0xFF6a6a6a),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        )
      ],
    ),
  );
}
