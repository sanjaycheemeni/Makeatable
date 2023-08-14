import 'package:flutter/material.dart';
import 'package:makeatable/view/SearchResult/Pages/screen_search_result_main.dart';
import 'package:makeatable/view/SearchResult/Widgets/searchbar.dart';


void main() {
  runApp(MyApp()); // Replace with the appropriate widget
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Homepage(), // Assuming Homepage is your entry point
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:makeatable/view/SearchResult/Pages/search_result.dart';
// import 'package:makeatable/view/SearchResult/screen_search_result_main.dart';
// void main()
// {
//   runApp(const MyApp());
//
// }
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
// }
// @override
// Widget build(BuildContext context){
//   return const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: HomePage(),
//   );
// }

// import 'package:flutter/material.dart';
// import 'package:makeatable/view/SearchResult/screen_search_result_main.dart';
//
// void main() {
// runApp( Homepage());