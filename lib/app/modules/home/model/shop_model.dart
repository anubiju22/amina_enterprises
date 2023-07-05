import 'dart:convert';

ShopViewModel shopViewModelFromJson(String str) =>
    ShopViewModel.fromJson(json.decode(str));

String shopViewModelToJson(ShopViewModel data) => json.encode(data.toJson());

class ShopViewModel {
  ShopViewModel({
    required this.status,
    required this.details,
  });
  bool status;

  List<Shop> details;

  factory ShopViewModel.fromJson(Map<String, dynamic> json) => ShopViewModel(
        status: json["status"],
        details: json["Details"] == null
            ? []
            : List<Shop>.from(json["Details"].map((x) => Shop.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "Details": List<dynamic>.from(details.map((x) => x.toJson())),
      };
}

class Shop {
  Shop({
    required this.id,
    required this.shopName,
    required this.contactPerson,
    required this.email,
    required this.mobile,
    required this.country,
    required this.state,
    required this.district,
    required this.location,
    required this.address,
    required this.gst,
    required this.vat,
    required this.panNo,
    required this.latitude,
    required this.longitude,
    required this.gpsLocation,
    required this.billingAddress,
    required this.shippingAddress,
    required this.creditPeriod,
    required this.idproofType,
    required this.idproofNo,
    required this.discountPercentage,
    required this.territory,
  });

  String id;

  String shopName;
  String contactPerson;
  String email;
  String mobile;
  String country;
  String state;
  String district;
  String location;
  String address;
  String gst;
  String vat;
  String panNo;
  String latitude;
  String longitude;
  String gpsLocation;
  String billingAddress;
  String shippingAddress;
  String creditPeriod;
  String idproofType;
  String idproofNo;
  String discountPercentage;
  String territory;

  factory Shop.fromJson(Map<String, dynamic> json) => Shop(
        id: json["id"],
        shopName: json["shop_name"],
        contactPerson: json["contact_person"],
        email: json["email"],
        mobile: json["mobile"],
        country: json["country"],
        state: json["state"],
        district: json["district"],
        location: json["location"],
        address: json["address"],
        gst: json["gst"],
        vat: json["vat"],
        panNo: json["pan_no"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        gpsLocation: json["gps_location"],
        billingAddress: json["billing_address"],
        shippingAddress: json["shipping_address"],
        creditPeriod: json["credit_period"],
        idproofType: json["idproof_type"],
        idproofNo: json["idproof_no"],
        discountPercentage: json["discount_percentage"],
        territory: json["territory"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "shop_name": shopName,
        "contact_person": contactPerson,
        "email": email,
        "mobile": mobile,
        "country": country,
        "state": state,
        "district": district,
        "location": location,
        "address": address,
        "gst": gst,
        "vat": vat,
        "pan_no": panNo,
        "latitude": latitude,
        "longitude": longitude,
        "gps_location": gpsLocation,
        "billing_address": billingAddress,
        "shipping_address": shippingAddress,
        "credit_period": creditPeriod,
        "idproof_type": idproofType,
        "idproof_no": idproofNo,
        "discount_percentage": discountPercentage,
        "territory": territory,
      };
}
