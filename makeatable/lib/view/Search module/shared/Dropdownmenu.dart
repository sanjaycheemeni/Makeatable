import 'package:flutter/material.dart';

const List<String> list = <String>['Kannur','wayanad','Kasargod','Malappuram','Trissur'];

class DropdownButtonExample2 extends StatefulWidget {
  const DropdownButtonExample2({Key? key}) : super(key: key);

  @override
  State<DropdownButtonExample2> createState() => _DropdownButtonExample2State();
}

class _DropdownButtonExample2State extends State<DropdownButtonExample2> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff1f1f1f),width: 1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.keyboard_arrow_down_outlined),
          isExpanded: true,
          underline: const SizedBox(),
          elevation: 16,
          style: const TextStyle(color: Color(0xFF665B5B)),
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
        ),
      ),
    );
  }
}
