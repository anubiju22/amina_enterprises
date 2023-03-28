import 'package:get/get.dart';

class HomeController extends GetxController {
  List items = [
    'Attendance',
    'My Route',
    'Shops',
    'My Visit',
    'My Order',
    'Profile',
    'Support'
  ];
  List images = [
    'assets/svg/home_user.svg',
    'assets/svg/route.svg',
    'assets/svg/home_shop.svg',
    'assets/svg/home_list.svg',
    'assets/svg/home_checklist.svg',
    'assets/svg/home_profile.svg',
    'assets/svg/call_center.svg'
  ];

  @override
  void onInit() {
    super.onInit();
  }
}
