import 'package:flutter/material.dart';

import '../Search module/shared/Dropdownmenu.dart';
import '../Search module/shared/DropdownmenuLOC.dart';
import '../Search module/shared/widgets.dart';
// import 'package:makeatable/view/shared/widgets.dart';
// import 'package:mirai_dropdown_menu/mirai_dropdown_menu.dart';

// import 'Dropdownmenu.dart';
// import 'DropdownmenuLOC.dart';

//icon button
class filterbutton extends StatelessWidget {
  const filterbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: IconButton(
          icon: const Icon(Icons.filter_alt),
          color: Colors.black87,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                // Using Wrap makes the bottom sheet height the height of the content.
                // Otherwise, the height will be half the height of the screen.
                return Wrap(
                  children: [
                    // Padding(
                    //   padding: EdgeInsets.only(left: 160,top: 20,right: 150),
                    //   child: Text("Filter",style: TextStyle(
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.bold,
                    //     color: Color(0xff1f1f1f),
                    //   ),),
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Location",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff1f1f1f),
                        ),
                      ),
                    ),
                    DropdownButtonExample2(),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Cuisines",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff1f1f1f),
                        ),
                      ),
                    ),
                    DropdownButtonExample(),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Choose your tags",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff1f1f1f),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: FilterChipExample(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      child: Text(
                        "Choose your price range",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff1f1f1f),
                        ),
                      ),
                    ),
                    RangeSliderExample(),
                    SizedBox(
                      height: 100,
                    )
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
