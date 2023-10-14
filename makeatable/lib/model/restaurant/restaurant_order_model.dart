class RestaurantOrder {
  DateTime? timeStamp;
  int? statusCode;
  String? status;
  String? reason;
  String? message;
  String? developerMessage;
  List<Datum>? data;

  RestaurantOrder({
    this.timeStamp,
    this.statusCode,
    this.status,
    this.reason,
    this.message,
    this.developerMessage,
    this.data,
  });
}

class Datum {
  String? roomType;
  int? numberOfSeats;
  String? userName;

  Datum({
    this.roomType,
    this.numberOfSeats,
    this.userName,
  });
}
