import 'package:flutter/material.dart';
import 'package:makeatable/util/product.dart';

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
      child: Container(
        width: MediaQuery.of(context).size.width* 0.70,
        height: widget.h,
        decoration: BoxDecoration(
          color: Color(0xFFEADEDE),
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
                Container(
                  height: widget.h,
                  child: Image.asset(
                    products[widget.id].image,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8),
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
                          color: Colors.green,
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
    );
  }
}
