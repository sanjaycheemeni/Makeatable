import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:makeatable/util/product.dart';

import '../../product_list/product_list.dart';

class ProductL extends StatefulWidget {
  final double h;
  final int id;

  const ProductL({
    Key? key,
    required this.h,
    required this.id,
  }) : super(key: key);

  @override
  _ProductLState createState() => _ProductLState();
}

class _ProductLState extends State<ProductL> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Get.to(ProductList());
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.70,
          height: 250,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8.0,
              )
            ],
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5)),
                    child: Image.asset(
                      products[widget.id].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          products[widget.id].title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\₹${products[widget.id].price}',
                          style: TextStyle(
                            color: mIconInactive,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 120,
                right: -5,
                child: IconButton(
                  icon: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : null,
                  ),
                  onPressed: toggleLike,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
