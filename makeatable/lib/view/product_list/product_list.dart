import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
        body: SafeArea(
          child: ListView(children: [
            Container(
              height: 90, // Adjust the height as needed
              color: Colors.redAccent, // Change the background color
              child: Center(
                child: Text(
                  'Restaurants',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Container(
                child: ListView(physics: ClampingScrollPhysics(), children: [
                  hotelTile("Paragon Hotel", "Calicut"), // List of restaurants and their location
                  hotelTile("Hotel2", "location2"),
                  hotelTile("Hotel3", "location3"),
                  hotelTile("Hotel4", "location4"),
                  hotelTile("Hotel5", "location5"),
                  hotelTile("Hotel6", "location6")
                ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

hotelTile(hotelName, location) {
  return Padding(
    padding: EdgeInsets.all(12),
    child: Container(
      width: 3,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(0xffff0000),
          boxShadow: [BoxShadow(blurRadius: 3, spreadRadius: 0.3)]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 8, 0, 0),
            child: Text(
              hotelName,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
            child: Text(
              location,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 6, 0, 0),
            child: Text(
              'Show menu', // On press show menu, directed to next page that list out menu
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    ),
  );
}
