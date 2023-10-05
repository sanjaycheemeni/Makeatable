import 'package:flutter/material.dart';

const List<String> list = <String>['GENERAL', 'FAMILY'];

class DropdownButtonExample2 extends StatefulWidget {
  const DropdownButtonExample2({Key? key}) : super(key: key);

  @override
  State<DropdownButtonExample2> createState() => _DropdownButtonExample2State();
}

class _DropdownButtonExample2State extends State<DropdownButtonExample2> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      elevation: 16,
      style: const TextStyle(color: Color(0xFF665B5B)),
      underline: Container(
        height: 2,
        color: const Color(0xFFFEE4E4),
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
