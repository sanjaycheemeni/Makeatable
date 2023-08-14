import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/view/SearchResult/Widgets/sort_modal_content.dart';

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
      height: widget.h,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton.icon(
            icon: SvgPicture.asset('icons/filter.svg', color: Color(0xFF667080)),
            label: Text(
              '     Filter     ',
              style: TextStyle(color: Color(0xFF000000)),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFFF2F2),
            ),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) => Container(
                  height: MediaQuery.of(context).size.height * 0.78,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(25.0),
                      topRight: const Radius.circular(25.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      // Add filter options here
                    ],
                  ),
                ),
              );
            },
          ),
          ElevatedButton.icon(
            icon: SvgPicture.asset('icons/align-justify.svg', color: Color(0xFF667080)),
            label: Text(
              '       Sort     ',
              style: TextStyle(color: Color(0xFF000000)),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFFF2F2),
            ),
            onPressed: () {
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
            },
          ),
        ],
      ),
    );
  }
}
