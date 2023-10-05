import 'package:flutter/material.dart';

class Widget01 extends StatefulWidget {
  const Widget01({super.key});

  @override
  State<Widget01> createState() => _Widget01State();
}

class _Widget01State extends State<Widget01> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ' ${selectedTime.hour}:${selectedTime.minute} ${selectedTime.period.name}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 0, 0),
                    fontSize: 20),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 255, 0, 0))),
                  child: Text('Select Time'),
                  onPressed: () async {
                    final TimeOfDay? timeOfDay = await showTimePicker(
                        context: context,
                        initialTime: selectedTime,
                        initialEntryMode: TimePickerEntryMode.dial);
                    if (timeOfDay != null) {
                      setState(() {
                        selectedTime = timeOfDay;
                      });
                    }
                  }),
            ],
          ),

          //choose types
        ],
      ),
    );
  }
}
