import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 2), () async {
      Get.offAllNamed(Routes.EMPLOYEE_LOGIN);
    });
    super.onInit();
  }
}
