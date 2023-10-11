import 'dart:convert';

class ApiResponse {
  bool success = false;
  num status = 202;
  String message = "";
  String error = "";
  dynamic data;
  ApiResponse({
    required this.success,
    required this.status,
    required this.message,
    required this.error,
    required this.data,
  });

  ApiResponse copyWith({
    bool? success,
    num? status,
    String? message,
    String? error,
    dynamic data,
  }) {
    return ApiResponse(
      success: success ?? this.success,
      status: status ?? this.status,
      message: message ?? this.message,
      error: error ?? this.error,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'success': success,
      'status': status,
      'message': message,
      'error': error,
      'data': data,
    };
  }

  factory ApiResponse.fromMap(Map<String, dynamic> map) {
    return ApiResponse(
      success: map['success'] ?? false,
      status: map['status'] ?? 0,
      message: map['message'] ?? '',
      error: map['error'] ?? '',
      data: map['data'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ApiResponse.fromJson(String source) =>
      ApiResponse.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ApiResponse(success: $success, status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApiResponse &&
        other.success == success &&
        other.status == status &&
        other.message == message &&
        other.error == error &&
        other.data == data;
  }

  @override
  int get hashCode {
    return success.hashCode ^
        status.hashCode ^
        message.hashCode ^
        error.hashCode ^
        data.hashCode;
  }
}
