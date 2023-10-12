import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/SearchResult/Widgets/bottomnavbar.dart';
import 'package:makeatable/view/auth_module/pages/screen_login.dart';
import 'package:makeatable/view/profile/screen_profile_editprofile.dart';


class User extends StatefulWidget {
  User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  bool isCurrentBooking = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 235, 235, 235),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.off(LoginPage());
                        },
                        child: Icon(
                          Icons.logout_outlined,
                          size: 30,
                          color: mRed,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
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
                          onTap: () {
                            Get.to(Editprofile());
                          },
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Aswin',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'aswin@gmail.com',
                      style: TextStyle(fontSize: 15, color: Color(0xFFBCBCBC)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OptionTile(
                        active: isCurrentBooking, text: 'Active booking'),
                    OptionTile(active: !isCurrentBooking, text: 'History'),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: GridView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: [foodTile(), foodTile(), foodTile()],
                  ),
                ),
              ],
            )),
        bottomNavigationBar: UserbottomBar(
          index: 2,
        ));
  }

  OptionTile({required bool active, required String text}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (text == 'History')
            isCurrentBooking = false;
          else
            isCurrentBooking = true;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: active ? mRed : Colors.white),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.normal,
            color: active ? Colors.white : mRed, // Adjust the text color
          ),
        ),
      ),
    );
  }
}

foodTile() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: Container(
      padding: EdgeInsets.all(8),
      width: 100,
      height: 250,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'images/img_4.png',
            width: 80,
            height: 80,
          ),
          Text(
            'Malabar Cafe',
            style: TextStyle(
              color: Color(0xFF000000), // Adjust the text color
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Container(
              height: 1.0,
              width: 130,
              color: Color(0xFF000000),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Date: ',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF000000),
                    ),
                  ),
                  Text(
                    '08/08/2023',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF667080), // Adjust the text color
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Time: ',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF000000),
                ),
              ),
              Text(
                '02:00 PM',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF667080), // Adjust the text color
                ),
              ),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Container(
              height: 1.0,
              width: 130,
              color: Color(0xFF000000),
            ),
          ),
        ],
      ),
    ),
  );
}
