import 'dart:convert';

EmpSupportResponse empSupportResponseFromJson(String str) =>
    EmpSupportResponse.fromJson(json.decode(str));

String empSupportResponseToJson(EmpSupportResponse data) =>
    json.encode(data.toJson());

class EmpSupportResponse {
  EmpSupportResponse({
    required this.status,
    required this.contact,
  });

  bool status;
  List<Contact> contact;

  factory EmpSupportResponse.fromJson(Map<String, dynamic> json) =>
      EmpSupportResponse(
        status: json["status"],
        contact:
            List<Contact>.from(json["contact"].map((x) => Contact.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "contact": List<dynamic>.from(contact.map((x) => x.toJson())),
      };
}

class Contact {
  Contact({
    required this.name,
    required this.mob,
    required this.email,
    required this.data,
  });

  String name;
  String mob;
  String email;
  List<Datum> data;

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        name: json["name"],
        mob: json["mob"],
        email: json["email"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "mob": mob,
        "email": email,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.item,
  });

  String item;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        item: json["item"],
      );

  Map<String, dynamic> toJson() => {
        "item": item,
      };
}
