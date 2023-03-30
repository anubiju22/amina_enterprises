import 'package:amina_enterprises/app/modules/home/controllers/dashboard_controller.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  DashboardController dashBoardController = Get.find();
  late List<CameraDescription> cameras;
  late final firstCamera;
  

  @override
  void onInit() {
    super.onInit();
    startCamera();
  }

  void startCamera() async {
    cameras = await availableCameras();
  }
}
