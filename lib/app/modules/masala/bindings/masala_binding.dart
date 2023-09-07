import 'package:get/get.dart';

import '../controllers/masala_controller.dart';

class MasalaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MasalaController>(
      () => MasalaController(),
    );
  }
}
