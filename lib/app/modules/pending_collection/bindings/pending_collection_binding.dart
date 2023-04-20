import 'package:get/get.dart';

import '../controllers/pending_collection_controller.dart';

class PendingCollectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PendingCollectionController>(
      () => PendingCollectionController(),
    );
  }
}
