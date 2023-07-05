// To parse this JSON data, do
//
//     final productdetails = productdetailsFromJson(jsonString);

import 'dart:convert';

Productdetails productdetailsFromJson(String str) =>
    Productdetails.fromJson(json.decode(str));

String productdetailsToJson(Productdetails data) => json.encode(data.toJson());

class Productdetails {
  bool status;
  String message;
  String count;
  List<Datum> data;

  Productdetails({
    required this.status,
    required this.message,
    required this.count,
    required this.data,
  });

  factory Productdetails.fromJson(Map<String, dynamic> json) => Productdetails(
        status: json["status"],
        message: json["Message"],
        count: json["Count"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "Message": message,
        "Count": count,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  String id;
  String name;
  String artNo;
  String categoryname;
  String categoryId;
  String brandname;
  String brandId;
  String constructionname;
  String constructionId;
  String mrp;
  String description;
  String isNewlaunch;
  bool rating;
  String dealerPrice;
  List<dynamic> specialfeature;
  List<Attribute> attributes;

  Datum({
    required this.id,
    required this.name,
    required this.artNo,
    required this.categoryname,
    required this.categoryId,
    required this.brandname,
    required this.brandId,
    required this.constructionname,
    required this.constructionId,
    required this.mrp,
    required this.description,
    required this.isNewlaunch,
    required this.rating,
    required this.dealerPrice,
    required this.specialfeature,
    required this.attributes,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        artNo: json["art_no"],
        categoryname: json["categoryname"],
        categoryId: json["category_id"],
        brandname: json["brandname"],
        brandId: json["brand_id"],
        constructionname: json["constructionname"],
        constructionId: json["construction_id"],
        mrp: json["mrp"],
        description: json["description"],
        isNewlaunch: json["is_newlaunch"],
        rating: json["rating"],
        dealerPrice: json["dealer_price"],
        specialfeature:
            List<dynamic>.from(json["specialfeature"].map((x) => x)),
        attributes: List<Attribute>.from(
            json["attributes"].map((x) => Attribute.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "art_no": artNo,
        "categoryname": categoryname,
        "category_id": categoryId,
        "brandname": brandname,
        "brand_id": brandId,
        "constructionname": constructionname,
        "construction_id": constructionId,
        "mrp": mrp,
        "description": description,
        "is_newlaunch": isNewlaunch,
        "rating": rating,
        "dealer_price": dealerPrice,
        "specialfeature": List<dynamic>.from(specialfeature.map((x) => x)),
        "attributes": List<dynamic>.from(attributes.map((x) => x.toJson())),
      };
}

class Attribute {
  String color;
  String colorCode;
  String colorId;
  List<Image> images;
  String brochure;
  bool wishlist;
  List<SizeStock> sizeStock;
  bool stockDisplay;
  String stock;
  List<Subcategory> subcategory;

  Attribute({
    required this.color,
    required this.colorCode,
    required this.colorId,
    required this.images,
    required this.brochure,
    required this.wishlist,
    required this.sizeStock,
    required this.stockDisplay,
    required this.stock,
    required this.subcategory,
  });

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        color: json["color"],
        colorCode: json["color_code"],
        colorId: json["color_id"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        brochure: json["brochure"],
        wishlist: json["wishlist"],
        sizeStock: List<SizeStock>.from(
            json["size_stock"].map((x) => SizeStock.fromJson(x))),
        stockDisplay: json["stock_display"],
        stock: json["stock"],
        subcategory: List<Subcategory>.from(
            json["subcategory"].map((x) => Subcategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "color": color,
        "color_code": colorCode,
        "color_id": colorId,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "brochure": brochure,
        "wishlist": wishlist,
        "size_stock": List<dynamic>.from(sizeStock.map((x) => x.toJson())),
        "stock_display": stockDisplay,
        "stock": stock,
        "subcategory": List<dynamic>.from(subcategory.map((x) => x.toJson())),
      };
}

class Image {
  String image;

  Image({
    required this.image,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
      };
}

class SizeStock {
  String size;
  String stock;

  SizeStock({
    required this.size,
    required this.stock,
  });

  factory SizeStock.fromJson(Map<String, dynamic> json) => SizeStock(
        size: json["size"],
        stock: json["stock"],
      );

  Map<String, dynamic> toJson() => {
        "size": size,
        "stock": stock,
      };
}

class Subcategory {
  String subcategoryId;
  String subcategoryname;
  String mrp;
  List<Size> size;
  List<Size> cartenSize;

  Subcategory({
    required this.subcategoryId,
    required this.subcategoryname,
    required this.mrp,
    required this.size,
    required this.cartenSize,
  });

  factory Subcategory.fromJson(Map<String, dynamic> json) => Subcategory(
        subcategoryId: json["subcategory_id"],
        subcategoryname: json["subcategoryname"],
        mrp: json["mrp"],
        size: List<Size>.from(json["size"].map((x) => Size.fromJson(x))),
        cartenSize:
            List<Size>.from(json["carten_size"].map((x) => Size.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "subcategory_id": subcategoryId,
        "subcategoryname": subcategoryname,
        "mrp": mrp,
        "size": List<dynamic>.from(size.map((x) => x.toJson())),
        "carten_size": List<dynamic>.from(cartenSize.map((x) => x.toJson())),
      };
}

class Size {
  String size;
  String cartenStock;
  String pairStock;
  String? cartonQuantity;

  Size({
    required this.size,
    required this.cartenStock,
    required this.pairStock,
    this.cartonQuantity,
  });

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        size: json["size"],
        cartenStock: json["carten_stock"],
        pairStock: json["pair_stock"],
        cartonQuantity: json["carton_quantity"],
      );

  Map<String, dynamic> toJson() => {
        "size": size,
        "carten_stock": cartenStock,
        "pair_stock": pairStock,
        "carton_quantity": cartonQuantity,
      };
}
