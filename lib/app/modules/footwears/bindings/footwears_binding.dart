import 'package:get/get.dart';

import '../controllers/footwears_controller.dart';

class FootwearsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FootwearsController>(
      () => FootwearsController(),
    );
  }
}
