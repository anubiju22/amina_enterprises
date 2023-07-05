import 'dart:developer';

import 'package:amina_enterprises/app/model/api_response.dart';
import 'package:amina_enterprises/app/model/auth_response.dart';
import 'package:amina_enterprises/app/modules/home/model/orderhistory_model.dart';
import 'package:amina_enterprises/app/modules/home/model/product_detailsmodel.dart';
import 'package:amina_enterprises/app/modules/home/model/product_model.dart';
import 'package:amina_enterprises/app/modules/home/model/shop_model.dart';
import 'package:amina_enterprises/app/modules/home/model/support.dart';
import 'package:amina_enterprises/services/base_url.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthProvider extends GetConnect {
  @override
  void onInit() {
    // httpClient.timeout = Duration(seconds: AppSettings().timeout);
    super.onInit();
  }

  Future<AuthResponse?> customerAuth(
    String mobile,
  ) async {
    var requestBody = FormData({"mobile": mobile});
    final response =
        await post("${BaseUrl().baseUrl}customer_otp_login.aspx", requestBody);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return AuthResponse.fromJson(response.body);
    }
  }

  Future<ApiResponse?> otpVerify(
      String mobile, String code, String type) async {
    var requestBody = FormData({"code": code, "mobile": mobile, "type": type});
    final response =
        await post("${BaseUrl().baseUrl}mobile_verification.aspx", requestBody);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return ApiResponse.fromJson(response.body);
    }
  }

  Future<ShopViewModel> getShop(
      String index, String size, String abpid, String keyword) async {
    var requestBody = FormData(
        {'index': index, 'size': size, 'abpid': abpid, 'keyword': keyword});
    final response = await post(
        "http://producttracking.vkcparivar.com/api/shops_view.aspx",
        requestBody);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return ShopViewModel.fromJson(response.body);
    }
  }

  Future<AuthResponse?> employeeAuth(
    String username,
    String password,
  ) async {
    var requestBody = FormData({
      "username": username,
      "password": password,
    });
    final response =
        await post("${BaseUrl().baseUrl}emp_login.aspx", requestBody);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return AuthResponse.fromJson(response.body);
    }
  }

  Future<EmpOrderHistoryResponse?> myorderHistoryApi(
    String empId,
    String userType,
  ) async {
    var requestBody = FormData({
      'employee_id': empId,
      'user_type': userType,
    });

    final response = await post(
        "${BaseUrl().baseUrl}emp_view_order_parivar.aspx", requestBody);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return EmpOrderHistoryResponse.fromJson(response.body);
    }
  }

  Future<EmpSupportResponse?> supportApi() async {
    final response = await post("${BaseUrl().baseUrl}support_contact.aspx", "");
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return EmpSupportResponse.fromJson(response.body);
    }
    // http://vkcparivar.com/api/support_contact.aspx
  }

  Future<ProductsResponse?> productsListApi(
      String index,
      String brandId,
      String isTrending,
      String categoryId,
      String userId,
      String state,
      String productSize,
      String isNewLaunch,
      String newlaunch,
      String collectionId,
      String userType,
      String colorId,
      String size,
      String field,
      String filterType,
      String constructionId,
      String keyword,
      String isStockAvailable) async {
    var requestBody = FormData({
      'index': index,
      'brand_id': brandId,
      'is_trending': isTrending,
      'category_id': categoryId,
      'user_id': userId,
      'state': state,
      'product_size': productSize,
      'is_newlaunch': isNewLaunch,
      'newlaunch': newlaunch,
      'collection_id': collectionId,
      'user_type': userType,
      'color_id': colorId,
      'size': size,
      'field': field,
      'filter_type': filterType,
      'construction_id': constructionId,
      'keyword': keyword,
      'stock_type': isStockAvailable
    });
    log(requestBody.fields.toString());

    final response =
        await post("${BaseUrl().baseUrl}catlog_product.aspx", requestBody);
    log("Response: ${requestBody.fields.toString()}");
    if (response.status.hasError) {
      // log(response.body);
      return Future.error(response.statusText!);
    } else {
      return ProductsResponse.fromJson(response.body);
    }
  }

  Future<Productdetails?> getProductDetailsApi(
      String userType,
      String userId,
      String id,
      String state,
      String logged_user_type,
      String dealerType,
      String dealerId) async {
    var requestBody = FormData({
      'user_type': userType,
      'user_id': userId,
      "id": id,
      'state': state,
      'logged_user_type': userType,
      'dealer_type': '',
      'dealer_id': '',
      // 'color_id': colorId,
      // "art_no": artNo
    });

    final response = await post(
        "${BaseUrl().baseUrl}catlog_product_details.aspx", requestBody);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return Productdetails.fromJson(response.body);
    }
  }
}
