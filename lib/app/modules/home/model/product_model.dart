// To parse this JSON data, do
//
//     final productsResponse = productsResponseFromJson(jsonString);

import 'dart:convert';

import 'package:amina_enterprises/services/base_url.dart';

ProductsResponse productsResponseFromJson(String str) =>
    ProductsResponse.fromJson(json.decode(str));

String productsResponseToJson(ProductsResponse data) =>
    json.encode(data.toJson());

class ProductsResponse {
  ProductsResponse({
    required this.status,
    required this.message,
    this.count,
    this.resultCount,
    this.data,
  });

  bool status;
  String message;
  String? count;
  String? resultCount;
  List<Product>? data;

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      ProductsResponse(
        status: json["status"],
        message: json["Message"],
        count: json["Count"],
        resultCount: json["ResultCount"],
        data: json["data"] == null
            ? []
            : List<Product>.from(json["data"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "Message": message,
        "Count": count,
        "ResultCount": resultCount,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Product {
  Product({
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
    required this.rating,
    required this.stock,
    required this.attributes,
  });

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
  int? stock;
  String description;
  bool rating;
  List<Attribute> attributes;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
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
        stock: json["stock"] == null
            ? 0
            : json["stock"].toString() == ""
                ? 0
                : int.parse(json["stock"].toString()),
        description: json["description"],
        rating: json["rating"],
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
        //   "stock": stock,
        "brand_id": brandId,
        "constructionname": constructionname,
        "construction_id": constructionId,
        "mrp": mrp,
        "description": description,
        "rating": rating,
        "attributes": List<dynamic>.from(attributes.map((x) => x.toJson())),
      };
}

class Attribute {
  Attribute({
    required this.id,
    required this.color,
    required this.colorCode,
    required this.colorId,
    required this.size,
    required this.sizeId,
    required this.subcategoryname,
    required this.subcategoryId,
    required this.mrp,
    required this.images,
    required this.brochure,
    required this.wishlist,
  });

  String id;
  String color;
  String colorCode;
  String colorId;
  String size;
  String sizeId;
  String subcategoryId;
  String subcategoryname;
  String mrp;
  List<Img> images;
  String brochure;
  bool wishlist;

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        id: json["id"],
        color: json["color"],
        colorCode: json["color_code"],
        colorId: json["color_id"],
        size: json["size"],
        sizeId: json["size_id"],
        subcategoryname: json["subcategoryname"],
        subcategoryId: json["subcategory_id"],
        mrp: json["mrp"],
        images: List<Img>.from(json["images"].map((x) => Img.fromJson(x))),
        brochure: json["brochure"],
        wishlist: json["wishlist"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "color": color,
        "color_code": colorCode,
        "color_id": colorId,
        "size": size,
        "size_id": sizeId,
        "subcategoryname": subcategoryname,
        "subcategory_id": subcategoryId,
        "mrp": mrp,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "brochure": brochure,
        "wishlist": wishlist,
      };
}

class Img {
  Img({
    required this.image,
  });

  String image;

  factory Img.fromJson(Map<String, dynamic> json) =>
      Img(image: json["image"] == "" ? BaseUrl().noImageUrl : json["image"]);

  Map<String, dynamic> toJson() => {
        "image": image,
      };
}
