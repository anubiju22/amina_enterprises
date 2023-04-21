import 'package:get/get.dart';

import '../controllers/add_payment_controller.dart';

class AddPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPaymentController>(
      () => AddPaymentController(),
    );
  }
}
