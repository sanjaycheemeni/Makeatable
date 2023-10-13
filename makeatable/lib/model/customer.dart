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
}
