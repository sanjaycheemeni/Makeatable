import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);// This widget is the root// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "Poppins"),
        debugShowCheckedModeBanner: false, // home : new ListViewBuilder(), NO Need To Use Unnecessary New Keyword
        home: const ListViewBuilder());
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: const Text("Restaurants",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        backgroundColor: Color(0xfff9f4c3),
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(12),
              child: Container(
                width: 3,
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xffE81514),
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                    title: Text('Hotelname',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    subtitle: Text('location',
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                    trailing: Text('Show menu',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
              ),
            );
          }),
    );
  }
}
