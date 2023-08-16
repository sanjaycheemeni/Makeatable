import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/view/shared/widgets.dart';
import 'package:makeatable/view/shared/Filter.dart';

class searchpage extends StatefulWidget {
  const searchpage({super.key});

  @override
  State<searchpage> createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins",primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: SearchBarWidget(),
        ),
        backgroundColor: const Color(0xfffff1f1),
        body: ListView(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 45, 15, 0),
                    ),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                        itemBuilder: (c, i) {
                      return LongBar(
                          foodName: 'Geerice',
                          price: '₹70',
                          imageLocation: 'imageLocation');
                    })
                  ],
                ))
          ],
        ),
        bottomNavigationBar: const CustomBottomNavBar(),
      ),
    );
  }
}
