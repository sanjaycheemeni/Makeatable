class RestaurantProfile {
  DateTime? timeStamp;
  int? statusCode;
  String? status;
  Data? data;

  RestaurantProfile({
    this.timeStamp,
    this.statusCode,
    this.status,
    this.data,
  });
}

class Data {
  int? id;
  String? fullName;
  int? mobileNum;
  String? location;
  dynamic email;
  String? imageUrl;
  String? foodType;
  String? description;
  String? typeRoom;
  int? averageRating;

  Data({
    this.id,
    this.fullName,
    this.mobileNum,
    this.location,
    this.email,
    this.imageUrl,
    this.foodType,
    this.description,
    this.typeRoom,
    this.averageRating,
  });
}
