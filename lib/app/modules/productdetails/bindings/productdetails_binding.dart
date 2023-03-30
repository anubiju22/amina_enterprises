import 'package:get/get.dart';

import '../controllers/productdetails_controller.dart';

class ProductdetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductdetailsController>(
      () => ProductdetailsController(),
    );
  }
}
