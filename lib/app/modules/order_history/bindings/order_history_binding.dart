import 'package:amina_enterprises/app/modules/login/provider/auth_provider.dart';
import 'package:get/get.dart';

import '../controllers/order_history_controller.dart';

class OrderHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderHistoryController>(
      () => OrderHistoryController(),
    );
    Get.lazyPut<AuthProvider>(() => AuthProvider());
  }
}
