import 'package:amina_enterprises/app/modules/login/provider/auth_provider.dart';
import 'package:get/get.dart';

import '../controllers/footwears_controller.dart';

class FootwearsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FootwearsController>(
      () => FootwearsController(),
    );
    Get.lazyPut<AuthProvider>(() => AuthProvider());
  }
}
