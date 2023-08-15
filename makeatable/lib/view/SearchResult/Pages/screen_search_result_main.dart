import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makeatable/view/SearchResult/Widgets/productlist.dart';
import 'package:makeatable/view/SearchResult/Widgets/searchbar.dart';
import 'package:makeatable/view/SearchResult/Widgets/bottomnavbar.dart';
import 'package:makeatable/view/SearchResult/Widgets/FilterndSort.dart';
import 'package:makeatable/view/SearchResult/Widgets/filterbutten.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

@override
class _HomepageState extends State<Homepage> {
  Widget build(BuildContext context) {
    int pid;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  child: searchbar(
                    hintText: 'Search',
                    controller: null,
                    obscureText: false,
                  ),
                ),
                SizedBox(height: 10),
                filtersort(h: 50),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: GridView.builder(
                      // crossAxisCount: 2,
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: 9,
                      itemBuilder: (BuildContext context, int index) {
                        return ProductL(h: 120, id: index);
                      }),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: bottomBar(index: 0, onTap: (n) {}),
      ),
    );
  }
}
