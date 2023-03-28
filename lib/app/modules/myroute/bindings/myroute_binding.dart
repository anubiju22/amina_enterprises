import 'package:get/get.dart';

import '../controllers/myroute_controller.dart';

class MyrouteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyrouteController>(
      () => MyrouteController(),
    );
  }
}
