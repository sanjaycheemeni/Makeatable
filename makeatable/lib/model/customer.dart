import 'dart:convert';

class User {
  String fullName;
  String email;
  String password;
  String mobileNumber;
  String preference;
  String userType;
  String status;

  User({
    required this.fullName,
    required this.email,
    required this.password,
    required this.mobileNumber,
    required this.preference,
    required this.userType,
    required this.status,
  });

  Map<String, dynamic> toJson() {
    return {
      '"fullName"': '"$fullName"',
      '"email"': '"$email"',
      '"password"': '"$password"',
      '"mobileNumber"': '"$mobileNumber"',
      '"userType"': '"$userType"',
      '"preference"': '"VEG"',
      '"status"': '"$status"',
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      fullName: json['fullName'],
      email: json['email'],
      password: json['password'],
      mobileNumber: json['mobileNumber'],
      preference: json['preference'],
      userType: json['userType'],
      status: json['status'],
    );
  }
}

Future<User> userFromJson(String data) async {
  return User.fromJson(json.decode(data));
}
