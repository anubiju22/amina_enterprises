import 'package:get/get.dart';

import '../controllers/myvisit_controller.dart';

class MyvisitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyvisitController>(
      () => MyvisitController(),
    );
  }
}
