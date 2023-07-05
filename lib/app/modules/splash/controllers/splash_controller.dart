import 'package:amina_enterprises/app/modules/login/controllers/login_controller.dart';
import 'package:amina_enterprises/app/modules/login/provider/auth_provider.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/config/session.dart';
import 'package:amina_enterprises/constraints/preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  final image = 'assets/image/splash_image.png'.obs;
  final AuthProvider _provider = GetInstance().find<AuthProvider>();

  @override
  void onInit() {
    // Future.delayed(const Duration(seconds: 2), () async {
    //   Get.offAllNamed(Routes.LOGIN);
    // });
    super.onInit();
    Future.delayed(const Duration(seconds: 1), () {
      loaderFunction();
    });
  }

  void loaderFunction() async {
    final prefs = await SharedPreferences.getInstance();
    final userType = prefs.getString("user_type");
    String? name = prefs.getString("name");
    String? mobile = prefs.getString("mobile");
    String? email = prefs.getString("email");
    Session.preferaceData(userType.toString(), name.toString(),
        mobile.toString(), email.toString());
    if (userType == null) {
      Get.offAllNamed(
        Routes.LOGIN,
      );
    } else {
      Get.offAllNamed(Routes.HOME);
    }
  }
}
