import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void snackSuccess({
  required BuildContext context,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 150,
      content: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 65,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 22, 133, 32),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome back",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "Login success!",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: 10,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "images/tick.png",
                  height: 30,
                  width: 30,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ],
            ),
          ),
        ],
      )));
}

void snackInvalidMobileNumber({
  required BuildContext context,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 150,
      content: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 65,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 0, 34),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Oh Snap!",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "Invalid Mobile number.",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: 5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "images/mobile.svg",
                  height: 30,
                  width: 30,
                  color: Color(0xFF801336),
                ),
                Positioned(
                  bottom: -1,
                  left: 15,
                  child: SvgPicture.asset(
                    "images/fail.svg",
                    color: Colors.white,
                    height: 15,
                    width: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      )));
}

//email not valid

void snackInvalidEmail({
  required BuildContext context,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 150,
      content: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 65,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 0, 34),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Oh Snap!",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "Invalid email ID.",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: 5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "images/email.svg",
                  height: 30,
                  width: 30,
                  color: Color(0xFF801336),
                ),
                Positioned(
                  bottom: -1,
                  left: 15,
                  child: SvgPicture.asset(
                    "images/fail.svg",
                    color: Colors.white,
                    height: 15,
                    width: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      )));
}

//already exist mail

void snackAlreadyRegEmail({
  required BuildContext context,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 150,
      content: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 65,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 0, 34),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Oh Snap!",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "Email ID already registred.",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: 5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "images/email.svg",
                  height: 30,
                  width: 30,
                  color: Color(0xFF801336),
                ),
                Positioned(
                  bottom: -1,
                  left: 15,
                  child: SvgPicture.asset(
                    "images/fail.svg",
                    color: Colors.white,
                    height: 15,
                    width: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      )));
}

void snackWrongUser({
  required BuildContext context,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 150,
      content: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 65,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 0, 34),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Oh Snap!",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "User not found!",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "images/user.svg",
                  height: 40,
                  width: 40,
                  color: Color(0xFF801336),
                ),
                Positioned(
                  bottom: 1,
                  right: 2,
                  child: SvgPicture.asset(
                    "images/alert.svg",
                    color: Colors.white,
                    height: 15,
                    width: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      )));
}

void snackWrongPass({
  required BuildContext context,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 150,
      content: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 65,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 252, 0, 34),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Oh Snap!",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "Wrong Credwentials!",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: 8,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "images/key.svg",
                  height: 30,
                  width: 30,
                  color: Color(0xFF801336),
                ),
                Positioned(
                  bottom: 1,
                  right: 2,
                  child: SvgPicture.asset(
                    "images/alert.svg",
                    color: Colors.white,
                    height: 12,
                    width: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      )));
}

//pasw not strong
void snackNotStrongPass({
  required BuildContext context,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 150,
      content: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 65,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 252, 0, 34),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Oh Snap!",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "Password not Strong!",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: 8,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "images/key.svg",
                  height: 30,
                  width: 30,
                  color: Color(0xFF801336),
                ),
                Positioned(
                  bottom: 1,
                  right: 2,
                  child: SvgPicture.asset(
                    "images/alert.svg",
                    color: Colors.white,
                    height: 12,
                    width: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      )));
}

//paaswd missmatch
void snackMissmatchPass({
  required BuildContext context,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 150,
      content: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 65,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 252, 0, 34),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Oh Snap!",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "Password not match!",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: 8,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "images/key.svg",
                  height: 30,
                  width: 30,
                  color: Color(0xFF801336),
                ),
                Positioned(
                  bottom: 1,
                  right: 2,
                  child: SvgPicture.asset(
                    "images/alert.svg",
                    color: Colors.white,
                    height: 12,
                    width: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      )));
}

void snackEmptyFields({
  required BuildContext context,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 150,
      content: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
            height: 65,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 252, 0, 34),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                const SizedBox(
                  width: 44,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Oh Snap!",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "Empty Field!",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: 8,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "images/inputText.svg",
                  height: 30,
                  width: 30,
                  color: Color(0xFF801336),
                ),
                Positioned(
                  bottom: 1,
                  right: 2,
                  child: SvgPicture.asset(
                    "images/alert.svg",
                    color: Colors.white,
                    height: 12,
                    width: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      )));
}
