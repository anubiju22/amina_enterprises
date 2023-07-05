class AuthResponse {
  AuthResponse({
    required this.status,
  });

  List<DealerAuthData> status;

  factory AuthResponse.fromJson(Map<String, dynamic> json) => AuthResponse(
        status: List<DealerAuthData>.from(
            json["status"].map((x) => DealerAuthData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": List<dynamic>.from(status.map((x) => x.toJson())),
      };
}

class DealerAuthData {
  DealerAuthData(
      {required this.status,
      required this.message,
      this.code,
      this.type,
      this.id,
      required this.otp,
      this.state,
      this.name,
      this.contactPerson,
      this.mobile,
      this.landline,
      this.email,
      this.district,
      this.pincode,
      this.location,
      this.address,
      this.country,
      this.profileImage,
      this.homedeliveryStatus,
      this.shopProfileImage,
      this.verifyStatus,
      this.isReportingPerson,
      this.isClaimHead,
      this.designationId,
      this.empDealer,
      this.empDealerId});

  String? status;
  String? message;
  String? code;
  String? type;
  String? id;
  String? otp;
  String? state;
  String? name;
  String? contactPerson;
  String? mobile;
  String? landline;
  String? email;
  String? district;
  String? pincode;
  String? location;
  String? address;
  String? country;
  String? profileImage;
  String? shopProfileImage;
  String? homedeliveryStatus;
  String? verifyStatus;
  String? isReportingPerson;
  String? designationId;
  String? isClaimHead;
  String? empDealer;
  String? empDealerId;

  factory DealerAuthData.fromJson(Map<String, dynamic> json) => DealerAuthData(
        status: json["status"],
        message: json["Message"],
        code: json["code"],
        type: json["type"],
        id: json["id"],
        otp: json["otp"],
        state: json["state"],
        name: json["name"],
        isClaimHead: json["claim_head"] ?? 'no',
        contactPerson: json["contact_person"],
        mobile: json["mobile"],
        landline: json["landline"],
        email: json["email"],
        district: json["district"],
        pincode: json["pincode"],
        location: json["location"],
        address: json["address"],
        country: json["country"],
        profileImage: json["profile_image"] ?? '',
        shopProfileImage: json["shop_image"] ?? '',
        homedeliveryStatus: json["homedelivery_status"],
        verifyStatus: json["verify_status"] ?? '0',
        isReportingPerson: json["iam_a_reporting_person"] ?? 'no',
        designationId: json["designation_id"] ?? '',
        empDealer: json["emp_dealer_type"] ?? '',
        empDealerId: json["emp_dealer_id"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "Message": message,
        "code": code,
        "type": type,
        "id": id,
        "otp": otp,
        "state": state,
        "name": name,
        "contact_person": contactPerson,
        "mobile": mobile,
        "landline": landline,
        "email": email,
        "district": district,
        "pincode": pincode,
        'claim_head': isClaimHead,
        "location": location,
        "address": address,
        "country": country,
        "profile_image": profileImage,
        "shop_image": shopProfileImage,
        "homedelivery_status": homedeliveryStatus,
        "verify_status": verifyStatus,
        "iam_a_reporting_person": isReportingPerson,
        "designation_id": designationId,
        "emp_dealer_type": empDealer,
        "emp_dealer_id": empDealerId
      };
}
