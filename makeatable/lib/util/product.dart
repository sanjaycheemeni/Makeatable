import 'package:flutter/material.dart';
class Product{
  final String image,title;
  final int price, id;
  Product({
    // super.key,
    required this.id,
    required this.image,
    required this.title,
    // this.description,
    required this.price,
    // this.size,
    // this.color,
});
}
List<Product> products = [
  Product(
    id:1,
    title: "Biriyani",
      price: 180,
    image: "images/biriyani.jpeg"
  ),
  Product(
      id:2,
      title: "Pizza",
      price: 110,
      image: "images/pizza.png"
  ),
  Product(
      id:3,
      title: "Burger",
      price: 70,
      image: "images/burger.png"
  ),
  Product(
      id:4,
      title: "Noodles",
      price: 130,
      image: "images/noodles.png"
  ),
  Product(
      id:5,
      title: "Hamsili Pilav",
      price: 210,
      image: "images/hamsilipilav.png"
  ),
  Product(
      id:6,
      title: "Mercimek Kofte",
      price: 170,
      image: "images/mercimekkofte.png"
  ),
  Product(
      id:7,
      title: "Kisir",
      price: 270,
      image: "images/kisir.png"
  ),
  Product(
      id:8,
      title: "Pasta",
      price: 80,
      image: "images/pasta.png"
  ),
  Product(
      id:9,
      title: "Manti",
      price: 55,
      image: "images/manti.png"
  ),
];