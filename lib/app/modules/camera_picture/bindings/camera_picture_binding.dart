import 'package:get/get.dart';

import '../controllers/camera_picture_controller.dart';

class CameraPictureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CameraPictureController>(
      () => CameraPictureController(),
    );
  }
}
