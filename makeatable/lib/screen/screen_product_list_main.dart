import 'package:flutter/material.dart';

class ProductMenu extends StatelessWidget {
  const ProductMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: Container(
              child: Text('Product list'),
          ),
        ),
    );
  }
}