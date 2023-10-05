import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/SearchResult/Widgets/sort_modal_content.dart';

import '../../Search module/shared/Dropdownmenu.dart';
import '../../Search module/shared/DropdownmenuLOC.dart';
import '../../Search module/shared/widgets.dart';

class filtersort extends StatefulWidget {
  final double h;

  const filtersort({
    super.key,
    required this.h,
  });

  @override
  _filtersortState createState() => _filtersortState();
}

class _filtersortState extends State<filtersort> {
  String sortBy = 'Alphabetical'; // Initial selected sort option

  void setSortBy(String option) {
    setState(() {
      sortBy = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: widget.h,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconTextCard('Filter', Icons.filter_alt, () {
            showModalBottomSheet(
              backgroundColor: Colors.white,
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
          }),
          IconTextCard('Sort', Icons.sort, () {
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (context) => SortModalContent(
                selectedSort: sortBy,
                onSortChanged: (newSort) {
                  Navigator.pop(context);
                  setSortBy(newSort);
                },
              ),
            );
          })
        ],
      ),
    );
  }
}

IconTextCard(String text, IconData ic, Function() ontap) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      width: 150,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration:
          BoxDecoration(color: mRed, borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          Icon(
            ic,
            size: 25,
            color: mWhite,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: mWhite),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      ),
    ),
  );
}
