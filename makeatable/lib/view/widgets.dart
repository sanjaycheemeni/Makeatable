import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Welcome Message widget

class WelcomeMessage extends StatelessWidget {
  final String name;
  const WelcomeMessage({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          const Text(
            '👋 Hai,',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Text(
            name + "!",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
    return const Padding(
      padding: EdgeInsets.fromLTRB(35, 10, 5, 2),
      child: Text(
        'Reminder',
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
    Color iconColor = const Color.fromARGB(255, 255, 220, 220);
    Color labelColor = const Color.fromARGB(255, 255, 250, 250);

    return Container(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
      width: 450,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.red),
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
            Row(
              children: [
                SvgPicture.asset(
                  'icons/map-pin.svg',
                  width: 18,
                  height: 18,
                  color: iconColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  location,
                  style: TextStyle(
                    fontSize: 18,
                    color: labelColor,
                  ),
                )
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'icons/clock.svg',
                  width: 18,
                  height: 18,
                  color: iconColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  time,
                  style: TextStyle(fontSize: 18, color: labelColor),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
