import 'package:amina_enterprises/app/common_widgets/payment_bottomsheet.dart';
import 'package:amina_enterprises/app/modules/home/controllers/dashboard_controller.dart';
import 'package:amina_enterprises/app/modules/home/model/drawer_model.dart';
import 'package:amina_enterprises/app/modules/home/views/drawer/drawer_view.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/alert_dialog.dart';
import 'package:amina_enterprises/services/dialog_helper.dart';
import 'package:amina_enterprises/services/location.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  DashboardController dashBoardController = Get.find();

  Position? CurrentPosition;
  String currentLocation = '';
  final menuItems = <DrawerItem>[].obs;
  final label = ''.obs;
  final brands = [
    'assets/image/winheels.png',
    'assets/image/aqualite.png',
    'assets/image/lunars.png'
  ];

  final divisionItems = [
    '#AMINA ENTERPRICES',
    '#TRENDZ INDIA MARKETING',
    '#AMINA TRADING.CO',
    '#MADEWELL MARKETING'
  ];
  String selectedValue = '#AMINA ENTERPRICES';

  late List<CameraDescription> cameras;
  late final firstCamera;
  late Position? location;

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
      DrawerItem('assets/svg/call_center.svg', 'Support', () {
        Get.toNamed(Routes.SUPPORT);
      }),
      DrawerItem('assets/svg/payments.svg', 'Payments', () {
        Get.bottomSheet(const PaymentBottomSheet(),
            backgroundColor: Colors.white,
            enableDrag: false,
            elevation: 4,
            shape: bottomSheetShape());
      }),
    ]);

    startCamera();

    getCurrentLocation();
  }

  void onClickDivision(String value) {
    selectedValue = value;
    //  print(value);
    update();
  }

  void updateSelectedValue(String value) {
    label.value = value;
  }

  void startCamera() async {
    cameras = await availableCameras();
    location = await determinePosition();
    if (cameras == null) {
      cameras = cameras;
      // DialogHelper.showLoading("Fetching Location");
      // location = location;
    }
  }

  Future<void> getAddress(lat, log) async {
    update();
    try {
      List<Placemark> placemark = await placemarkFromCoordinates(lat, log);
      Placemark place = placemark[0];
      currentLocation =
          "${place.subLocality},${place.street},${place.locality}";
      update();
    } finally {
      print('error');
    }
  }

  Future<void> getCurrentLocation() async {
    update();
    try {
      CurrentPosition = await determinePosition();
      getAddress(CurrentPosition!.latitude, CurrentPosition!.longitude);
    } finally {
      print('error');
      update();
    }
  }
}
//   void  determinePosition() async {
// //  Position? newLocalData = await determinePosition();
//   }
