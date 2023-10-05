import 'package:flutter/material.dart';

class filter extends StatelessWidget {
  final String NAme;
  const filter({
    super.key,
    required this.NAme,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text(NAme),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 200,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Modal BottomSheet'),
                      ElevatedButton(
                        child: const Text(' BottomSheet'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
