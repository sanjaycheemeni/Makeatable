class TopRated {
  DateTime? timeStamp;
  int? statusCode;
  String? status;
  String? message;
  List<Datum>? data;

  TopRated({
    this.timeStamp,
    this.statusCode,
    this.status,
    this.message,
    this.data,
  });
}

class Datum {
  int? id;
  String? fullName;
  int? mobileNum;
  String? location;
  String? email;
  String? imageUrl;
  dynamic userId;
  dynamic userName;
  String? openTime;
  String? closeTime;
  String? foodType;
  int? seatNum;
  String? description;
  int? rating;
  String? typeRoom;
  bool? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  Datum({
    this.id,
    this.fullName,
    this.mobileNum,
    this.location,
    this.email,
    this.imageUrl,
    this.userId,
    this.userName,
    this.openTime,
    this.closeTime,
    this.foodType,
    this.seatNum,
    this.description,
    this.rating,
    this.typeRoom,
    this.status,
    this.createdAt,
    this.updatedAt,
  });
}
