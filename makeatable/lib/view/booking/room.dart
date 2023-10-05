import 'package:flutter/material.dart';

const List<String> list = <String>[
  'AC / Family',
  'Non-AC / Family',
  'AC / Normal',
  'Non-AC / Normal'
];

class DropdownButtonExample1 extends StatefulWidget {
  const DropdownButtonExample1({super.key});

  @override
  State<DropdownButtonExample1> createState() => _DropdownButtonExample1State();
}

class _DropdownButtonExample1State extends State<DropdownButtonExample1> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
      underline: Container(
        height: 2,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(fontSize: 15),
          ),
        );
      }).toList(),
    );
  }
}
