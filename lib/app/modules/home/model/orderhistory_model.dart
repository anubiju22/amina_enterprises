// To parse this JSON data, do
//
//     final empOrderHistoryResponse = empOrderHistoryResponseFromJson(jsonString);

import 'dart:convert';

EmpOrderHistoryResponse empOrderHistoryResponseFromJson(String str) =>
    EmpOrderHistoryResponse.fromJson(json.decode(str));

String empOrderHistoryResponseToJson(EmpOrderHistoryResponse data) =>
    json.encode(data.toJson());

class EmpOrderHistoryResponse {
  EmpOrderHistoryResponse({
    required this.status,
    required this.message,
    this.data,
  });

  bool status;
  String message;
  List<EmpOrderHistory>? data = [];

  factory EmpOrderHistoryResponse.fromJson(Map<String, dynamic> json) =>
      EmpOrderHistoryResponse(
        status: json["status"],
        message: json["Message"],
        data: json["data"] == null
            ? []
            : List<EmpOrderHistory>.from(
                json["data"].map((x) => EmpOrderHistory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "Message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class EmpOrderHistory {
  EmpOrderHistory(
      {required this.userId,
      required this.userType,
      required this.name,
      required this.enquiryNo,
      required this.date,
      required this.flag});

  String userId;
  String userType;
  String name;
  String enquiryNo;
  String date;
  String flag;

  factory EmpOrderHistory.fromJson(Map<String, dynamic> json) =>
      EmpOrderHistory(
        userId: json["user_id"],
        userType: json["user_type"],
        name: json["name"],
        enquiryNo: json["enquiry_no"],
        date: json["date"],
        flag: json["flag"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "user_type": userType,
        "name": name,
        "enquiry_no": enquiryNo,
        "date": date,
      };
}
