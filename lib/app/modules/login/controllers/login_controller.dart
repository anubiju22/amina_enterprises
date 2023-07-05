import 'dart:convert';

import 'package:amina_enterprises/app/model/auth_response.dart';
import 'package:amina_enterprises/app/modules/login/provider/auth_provider.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/constraints.dart';
import 'package:amina_enterprises/constraints/preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final isLoading = false.obs;
  // final prefs = Pref.prefs;
  final isCustomerAuthLoading = false.obs;
  final isEmployeeAuthLoading = false.obs;
  final AuthProvider _provider = GetInstance().find<AuthProvider>();
  late TextEditingController mobileNoController;
  late TextEditingController passwordController;
  String otp = '';
  final type = "customer";
  var mobile = '';
  final formKey3 = GlobalKey<FormState>();
  final employeeFormKey = GlobalKey<FormState>();

  @override
  void onInit() async {
    super.onInit();
    // loadCurrentUser();
    // initialize mobile , password textediting
    mobileNoController = TextEditingController();
    passwordController = TextEditingController();
    // FirebaseNotificationStates().firebaseViewStates();
  }

  clearFields() {
    mobileNoController.clear();
    passwordController.clear();
  }

  Future<void> employeeAuth() async {
    isEmployeeAuthLoading(true);
    try {
      final response = await _provider.employeeAuth(
          mobileNoController.text.trimLeft().trimRight(),
          passwordController.text.trimLeft().trimRight());
      await login(response, 'employee');
    } catch (e) {
      contactAdministrationSnackBar('Something Went Wrong', e.toString());
    } finally {
      isEmployeeAuthLoading(false);
    }
  }

  Future<void> customerAuth() async {
    isCustomerAuthLoading(true);

    try {
      final response = await _provider.customerAuth(
        mobileNoController.text.trimLeft().trimRight(),
      );
      await login(response, 'customer');
    } catch (e) {
      // Get.snackbar("Error", e.toString());

      isCustomerAuthLoading(false);
    } finally {
      isCustomerAuthLoading(false);
    }
  }

  Future login(AuthResponse? response, String userType) async {
    if (response != null) {
      if (response.status.first.status == 'Success') {
        if (userType == 'customer') {
          bool otpVerifyStatus = await Get.toNamed(Routes.OTP,
              arguments: ['customer', response.status.first.mobile]);
          mobile = response.status.first.mobile.toString();
          if (otpVerifyStatus) {
            // setStorageService(response);
            preferaceData(response);
          }
        }
        // if (userType == 'employee') {
        //   Get.toNamed(Routes.HOME);
        // }
        else {
          preferaceData(response);
        }
      } else {
        contactAdministrationSnackBar(
            'Login Failed', response.status.first.message!);
      }
    } else {
      contactAdministrationSnackBar(
          'Something Went Wrong', 'Contact Administrator');
    }
  }

  Future preferaceData(
    AuthResponse response,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("user_type", response.status.first.type!);
    prefs.setString("name", response.status.first.name.toString());
    prefs.setString("mobile", response.status.first.mobile.toString());
    prefs.setString("email", response.status.first.email.toString());
    prefs.setString("user", jsonEncode(response.status.first.toJson()));
    clearFields();
    //  await loadCurrentUser();
    Get.offAllNamed(Routes.SPLASH);
  }

  // void setStorageService(
  //   AuthResponse response,
  // ) async {
  //   // prefs.setString("user_type", response.status.first.type!);
  //   // prefs.setString("user", jsonEncode(response.status.first.toJson()));
  //   clearFields();
  //   // await loadCurrentUser();
  //   // Get.offAllNamed(Routes.SPLASH);
  // }

  Future<void> otpVerify() async {
    isLoading(true);
    try {
      final response = await _provider.otpVerify(mobile, otp, type);
      if (response != null) {
        if (response.status) {
          // if (type == "retailer" || type == "subdealer") {
          //   toast(
          //     "Registration Success",
          //     ToastGravity.CENTER,
          //     Toast.LENGTH_LONG,
          //   );
          //   Get.offAllNamed(Routes.LOADER);
          // }
          //  else
          if (type == 'customer') {
            Get.back(result: response.status);
          }
        } else {
          Get.snackbar("Verification Failed !", response.message!);
        }
      } else {
        Get.snackbar("Error", "Contact Administrator");
      }
    } catch (e) {
      contactAdministrationSnackBar('Something Went Wrong', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
