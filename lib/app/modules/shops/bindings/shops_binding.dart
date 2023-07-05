import 'package:amina_enterprises/app/modules/login/provider/auth_provider.dart';
import 'package:get/get.dart';

import '../controllers/shops_controller.dart';

class ShopsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShopsController>(
      () => ShopsController(),
    );
    Get.lazyPut<AuthProvider>(() => AuthProvider());
  }
}
