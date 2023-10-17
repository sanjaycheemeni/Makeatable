import 'dart:convert';

class Food {
  final int id;
  final String name;
  final String category;
  final String subCategory;
  final double price;
  final String? restaurantId;
  final double rating;
  final String imageUrl;
  final int calories;
  final String description;

  Food({
    required this.id,
    required this.name,
    required this.category,
    required this.subCategory,
    required this.price,
    this.restaurantId,
    required this.rating,
    required this.imageUrl,
    required this.calories,
    required this.description,
  });

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      id: json['id'],
      name: json['name'],
      category: json['category'],
      subCategory: json['subCategory'],
      price: json['price'].toDouble(),
      restaurantId: json['restaurantId'],
      rating: json['rating'].toDouble(),
      imageUrl: json['imageUrl'],
      calories: json['calories'],
      description: json['description'],
    );
  }
}

class TopRatedFood {
  final String timeStamp;
  final int statusCode;
  final String status;
  final String message;
  final List<Food> data;

  TopRatedFood({
    required this.timeStamp,
    required this.statusCode,
    required this.status,
    required this.message,
    required this.data,
  });

  factory TopRatedFood.fromJson(Map<String, dynamic> json) {
    final List<dynamic> foodList = json['data'];
    List<Food> foods = foodList.map((food) => Food.fromJson(food)).toList();

    return TopRatedFood(
      timeStamp: json['timeStamp'],
      statusCode: json['statusCode'],
      status: json['status'],
      message: json['message'],
      data: foods,
    );
  }
}

List<Food> topFoodFromJson(String data) => List<Food>.from(json
    .decode(data)['data']
    .map((x) => Food.fromJson(Map<String, dynamic>.from(x))));
