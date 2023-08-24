import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
// Import any other necessary dependencies here

class ManagerHistory extends StatefulWidget {
  const ManagerHistory({Key? key}) : super(key: key);

  @override
  _ManagerHistoryState createState() => _ManagerHistoryState();
}

class _ManagerHistoryState extends State<ManagerHistory> {
  // List of users
  List<String> users = [
    "user1",
    "user2",
    "user3",
    "user4",
    "user5",
    "user6",
    "user7",
    "user8",
    "user9",
    "user10",
    // Add more users...
  ];

  // Map of user messages
  Map<String, String> userMessages = {
    "user1": "1. SECTION: FAMILY, TABLE(A/C): 6P",
    "user2": "1. SECTION: FAMILY, TABLE(A/C): 4P",
    "user3": "1. SECTION: GENERAL, TABLE(A/C): 4P",
    "user4": "1. SECTION: FAMILY, TABLE(NON A/C): 8P",
    "user5": "1. SECTION: FAMILY, TABLE(A/C): 6P",
    "user6": "1. SECTION: GENERAL, TABLE(A/C): 2P",
    "user7": "1. SECTION: FAMILY, TABLE(A/C): 8P",
    "user8": "1. SECTION: GENERAL, TABLE(NON A/C): 6P",
    "user9": "1. SECTION: GENERAL, TABLE(A/C): 4P",
    "user10": "1. SECTION: FAMILY, TABLE(NON A/C): 8P",
    // Add more user details...
  };

  // Current index for the bottom navigation bar
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
        // Define the bottom navigation bar
        bottomNavigationBar: bottomBar(_currentIndex),
        body: GestureDetector(
          onTap: () {
            // Unfocus the keyboard
            FocusScope.of(context).unfocus();
          },
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row with title and search input field
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(7, 10, 0, 5),
                        child: Text(
                          'ORDER HISTORY',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    // Search input field
                    SizedBox(
                      width: 150,
                      height: 40,
                      child: TextField(
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          hintText: 'Search user',
                          border: OutlineInputBorder(),
                        ),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                // List of users
                Expanded(
                  child: ListView.builder(
                    physics:AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final username = users[index];
                      return GestureDetector(
                        onTap: () {
                          // Show user details dialog when a user is tapped
                          _showUserDetailsDialog(username);
                        },
                        child: userTile(context, username),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to show a user details dialog
  void _showUserDetailsDialog(String username) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('User Details'),
          content: Text(userMessages[username] ?? "No Details Found"),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  // Widget for a user tile
  Widget userTile(BuildContext context, String username) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: 326,
        height: 126,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(0xffFFEECC),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 22, 0, 5),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  username,
                  style: const TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Bottom navigation bar
  Widget bottomBar(int index) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor:mYellow,
      selectedItemColor:mYellow,
      unselectedItemColor:mYellow,
      currentIndex: index,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset('icons/home.svg',
              color: mIconInactive),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('icons/file-plus.svg',
              color: mIconInactive),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('icons/clock.svg',
              color: mIconActive),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('icons/user.svg',
              color: mIconInactive),
          label: '',
        ),
      ],
    );
  }
}
// Main function to run the app
void main() {
  runApp(ManagerHistory());
}
