import 'dart:ui';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/util/constants/icon_constants.dart';

enum ExerciseFilter { salty, sour, sweet, spicy }
// Color
// final app = AppColors();

// Top message widget

class TopMessage extends StatelessWidget {
  final String name;
  const TopMessage({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Discover',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}

// Title heading

class TitleHeading extends StatelessWidget {
  final String heading;
  const TitleHeading({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        'Recent',
        style: TextStyle(color: Color.fromARGB(223, 109, 109, 109)),
      ),
    );
  }
}

// Reminder Card

class ReminderCard extends StatelessWidget {
  final String time;
  final String location;
  const ReminderCard({super.key, required this.time, required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
      width: 450,
      height: 150,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: mRed),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your food will be ready',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            reminderItem(IconSet().clock, time),
          ],
        ),
      ),
    );
  }

  reminderItem(String icon, String value) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 18,
          height: 18,
          color: mWhite,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          value,
          style: TextStyle(fontSize: 18, color: mWhite),
        )
      ],
    );
  }
}

// Horizontal sizedbox

class hBlock extends StatelessWidget {
  final double height;
  const hBlock(
    this.height, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

//  vertical sized box

class wBlock extends StatelessWidget {
  final double width;
  const wBlock(
    this.width, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width,
    );
  }
}

// Top rated food card

class TopRatedCard extends StatelessWidget {
  final String foodName, price, imageLocation;
  const TopRatedCard(
      {required this.foodName,
      required this.price,
      required this.imageLocation,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('images/chicken_biriyani.jpeg'),
                fit: BoxFit.cover),
            color: Color(0xaa000000),
            borderRadius: BorderRadius.circular(10)),
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        width: 200,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 115, 0, 5),
              child: Text(
                'foodName',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 140, 0, 15),
              child: Text(
                'price',
                style: TextStyle(
                    color: Color.fromARGB(172, 255, 193, 7),
                    fontSize: 17,
                    fontWeight: FontWeight.w100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Long Bar
class LongBar extends StatelessWidget {
  final String foodName, price, imageLocation;
  const LongBar(
      {required this.foodName,
      required this.price,
      required this.imageLocation,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageLocation), fit: BoxFit.cover),
            color: Color(0xaa000000),
            borderRadius: BorderRadius.circular(10)),
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        width: 400, height: 75,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 15, 0, 5),
              child: Text(
                foodName,
                style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 40, 0, 15),
              child: Text(
                price,
                style: TextStyle(
                    color: Color.fromARGB(172, 255, 193, 7),
                    fontSize: 15,
                    fontWeight: FontWeight.w100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//filter chip

class FilterChipExample extends StatefulWidget {
  const FilterChipExample({super.key});

  @override
  State<FilterChipExample> createState() => _FilterChipExampleState();
}

class _FilterChipExampleState extends State<FilterChipExample> {
  Set<ExerciseFilter> filters = <ExerciseFilter>{};

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 5.0),
          Wrap(
            spacing: 5.0,
            children: ExerciseFilter.values.map((ExerciseFilter exercise) {
              return FilterChip(
                label: Text(exercise.name),
                selected: filters.contains(exercise),
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      filters.add(exercise);
                    } else {
                      filters.remove(exercise);
                    }
                  });
                },
              );
            }).toList(),
          ),
          // const SizedBox(height: 10.0),
          // Text(
          //   'selected: ${filters.map((ExerciseFilter e) => e.name).join(', ')}',
          //   style: textTheme.labelLarge,
          //),
        ],
      ),
    );
  }
}

// range slider
class RangeSliderExample extends StatefulWidget {
  const RangeSliderExample({super.key});

  @override
  State<RangeSliderExample> createState() => _RangeSliderExampleState();
}

class _RangeSliderExampleState extends State<RangeSliderExample> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      activeColor: Color(0xffE81514),
      values: _currentRangeValues,
      max: 100,
      divisions: 100,
      labels: RangeLabels(
        _currentRangeValues.start.round().toString(),
        _currentRangeValues.end.round().toString(),
      ),
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
    );
  }
}

class TabBar extends StatefulWidget {
  const TabBar({super.key});

  @override
  State<TabBar> createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//Search bar
class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onChanged: (query) {
          // Handle the search query here
          print('Search query: $query');
        },
      ),
    );
  }
}
