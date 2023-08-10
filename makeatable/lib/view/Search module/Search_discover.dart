import 'package:flutter/material.dart';


class mainsearchpage extends StatefulWidget {
  const mainsearchpage({super.key});

  @override
  State<mainsearchpage> createState() => _mainsearchpageState();
}

class _mainsearchpageState extends State<mainsearchpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              child: Container(
                margin: EdgeInsets.only(top: 45, bottom: 15),
                padding: EdgeInsets.only(right: 35,left: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Discover" , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,),
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        child: Icon(Icons.filter_alt, color: Color(0xff522903)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 350,
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'search',
                    suffixIcon: const Icon(Icons.search),
                    suffixIconColor: Color(0xff522903),
                ),
              ),
            ),
            Container(
              child: Container(
                margin: EdgeInsets.only(top:230, bottom: 20),
                padding: EdgeInsets.only(right: 20,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Recent" , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
