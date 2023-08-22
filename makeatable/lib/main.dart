import 'package:flutter/material.dart';
import 'package:makeatable/view/search_history/screeen_mangaerhistory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ManagerHistory(),
    );
  }
}
