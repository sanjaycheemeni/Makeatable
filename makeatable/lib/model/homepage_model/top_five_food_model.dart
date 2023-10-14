class TopFiveFood {
  DateTime? timeStamp;
  int? statusCode;
  String? status;
  String? message;
  List<Datum>? data;

  TopFiveFood({
    this.timeStamp,
    this.statusCode,
    this.status,
    this.message,
    this.data,
  });
}

class Datum {
  int? id;
  String? name;
  String? category;
  String? subCategory;
  double? price;
  dynamic restaurantId;
  double? rating;
  String? imageUrl;
  int? calories;
  String? description;

  Datum({
    this.id,
    this.name,
    this.category,
    this.subCategory,
    this.price,
    this.restaurantId,
    this.rating,
    this.imageUrl,
    this.calories,
    this.description,
  });
}
