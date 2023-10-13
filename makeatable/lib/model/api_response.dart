class ApiResponse {
  DateTime? timeStamp;
  int? statusCode;
  String? status;
  String? reason;
  String? message;
  String? developerMessage;
  dynamic data;

  ApiResponse({
    this.timeStamp,
    this.statusCode,
    this.status,
    this.reason,
    this.message,
    this.developerMessage,
    this.data,
  });
  String getStatusCode() {
    return this.statusCode.toString();
  }
}
