import 'package:amina_enterprises/app/modules/home/controllers/dashboard_controller.dart';
import 'package:amina_enterprises/app/modules/home/model/drawer_model.dart';
import 'package:amina_enterprises/app/modules/home/views/drawer/drawer_view.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  DashboardController dashBoardController = Get.find();
  // final items = [
  //   'Attendance',
  //   'MyRoute',
  //   'Shops',
  //   'My Visit',
  //   'My Order',
  //   'Profile',
  //   'Support'
  // ];
  // final images = [
  //   'assets/svg/home_user.svg',
  //   'assets/svg/route.svg',
  //   'assets/svg/home_shop.svg',
  //   'assets/svg/home_list.svg',
  //   'assets/svg/home_checklist.svg',
  //   'assets/svg/home_profile.svg',
  //   'assets/svg/call_center.svg'
  // ];
  final menuItems = <DrawerItem>[].obs;

  late List<CameraDescription> cameras;
  late final firstCamera;

  @override
  void onInit() {
    super.onInit();
    menuItems.addAll([
      DrawerItem('assets/svg/home_user.svg', 'Attendance', () {
        Get.toNamed(Routes.ATTENDANCE_REPORT);
      }),
      DrawerItem('assets/svg/route.svg', 'My Route', () {
        Get.toNamed(Routes.MYROUTE);
      }),
      DrawerItem('assets/svg/home_shop.svg', 'Shops', () {
        Get.toNamed(Routes.SHOPS);
      }),
      DrawerItem('assets/svg/home_list.svg', 'My Visit', () {
        Get.toNamed(Routes.MYVISIT);
      }),
      DrawerItem('assets/svg/home_checklist.svg', 'My Order', () {
        Get.toNamed(Routes.ORDER_HISTORY);
      }),
      DrawerItem('assets/svg/home_profile.svg', 'Profile', () {
       
      }),
      DrawerItem('assets/svg/call_center.svg', 'Support', () {
        Get.toNamed(Routes.SUPPORT);
      }),
    ]);

    startCamera();
  }

  void startCamera() async {
    cameras = await availableCameras();
  }
}
