import 'dart:convert';

class Top5Resto {
  DateTime timeStamp;
  int statusCode;
  String status;
  String message;
  List<Resto> data;

  Top5Resto({
    required this.timeStamp,
    required this.statusCode,
    required this.status,
    required this.message,
    required this.data,
  });
}

class Resto {
  int id;
  String fullName;
  int mobileNum;
  String location;
  String? email;
  String imageUrl;
  dynamic userId;
  dynamic userName;
  String openTime;
  String closeTime;
  String foodType;
  int? seatNum;
  String description;
  String rating;
  String? typeRoom;
  bool? status;
  String createdAt;
  String updatedAt;

  Resto({
    required this.id,
    required this.fullName,
    required this.mobileNum,
    required this.location,
    required this.email,
    required this.imageUrl,
    required this.userId,
    required this.userName,
    required this.openTime,
    required this.closeTime,
    required this.foodType,
    required this.seatNum,
    required this.description,
    required this.rating,
    required this.typeRoom,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Resto.fromJson(Map<dynamic, dynamic> json) {
    // print(json['rating'].runtimeType);
    return Resto(
      id: json['id'],
      fullName: json['fullName'],
      mobileNum: json['mobileNum'],
      location: json['location'],
      email: json['email'],
      imageUrl: json['imageUrl'],
      userId: json['userId'],
      userName: json['userName'],
      openTime: json['openTime'],
      closeTime: json['closeTime'],
      foodType: json['foodType'],
      seatNum: json['seatNum'],
      description: json['description'],
      rating: json['rating'].toString(),
      typeRoom: json['typeRoom'],
      status: json['status'],
      createdAt: json['createdAt'].toString(),
      updatedAt: json['updatedAt'].toString(),
    );
  }
}

List<Resto> topRestoFromJson(String data) => List<Resto>.from(json
    .decode(data)['data']
    .map((x) => Resto.fromJson(Map<dynamic, dynamic>.from(x))));
