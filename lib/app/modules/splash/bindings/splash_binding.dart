import 'package:amina_enterprises/app/modules/login/provider/auth_provider.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
    Get.lazyPut<AuthProvider>(() => AuthProvider());
  }
}
