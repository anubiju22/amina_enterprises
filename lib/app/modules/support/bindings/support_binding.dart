import 'package:get/get.dart';

import '../../login/provider/auth_provider.dart';
import '../controllers/support_controller.dart';

class SupportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SupportController>(
      () => SupportController(),
    );
    Get.lazyPut<AuthProvider>(() => AuthProvider());
  }
}
