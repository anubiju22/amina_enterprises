import 'package:get/get.dart';

import '../controllers/paymenthistory_controller.dart';

class PaymenthistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymenthistoryController>(
      () => PaymenthistoryController(),
    );
  }
}
