import 'dart:convert';

ApiResponse apiResponseFromJson(String str) =>
    ApiResponse.fromJson(json.decode(str));

String apiResponseToJson(ApiResponse data) => json.encode(data.toJson());

class ApiResponse {
  ApiResponse(
      {required this.status,
      this.message,
      this.messageScreen,
      this.count,
      this.point,
      this.checkInId,
      this.id});

  bool status;
  String? message;
  String? messageScreen;
  String? count;
  String? point;
  String? checkInId;
  String? id;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
      status: json["status"] == 'Success' ? true : json["status"],
      message: json["Message"] ?? '',
      count: json["Count"],
      point: json["Point"],
      checkInId: json["checkin_id"],
      messageScreen: json["MessageScreen"] ?? '',
      id: json["id"]);

  Map<String, dynamic> toJson() => {
        "status": status,
        "Message": message,
      };
}
