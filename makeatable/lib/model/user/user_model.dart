class Users {
    DateTime? timeStamp;
    int? statusCode;
    String? status;
    String? message;
    List<Datum>? data;

    Users({
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
    String? email;
    String? mobileNum;
    Preference? preference;
    UserType? userType;
    DateTime? createdAt;
    DateTime? updatedAt;

    Datum({
        this.id,
        this.fullName,
        this.email,
        this.mobileNum,
        this.preference,
        this.userType,
        this.createdAt,
        this.updatedAt,
    });

}

enum Preference {
    BOTH,
    NON_VEG,
    VEG
}

enum UserType {
    ADMIN,
    CUSTOMER,
    MANAGER
}
