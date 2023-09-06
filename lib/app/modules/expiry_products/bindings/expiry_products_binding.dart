import 'package:get/get.dart';

import '../controllers/expiry_products_controller.dart';

class ExpiryProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpiryProductsController>(
      () => ExpiryProductsController(),
    );
  }
}
