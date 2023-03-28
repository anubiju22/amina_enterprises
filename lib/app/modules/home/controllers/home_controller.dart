import 'package:amina_enterprises/app/modules/home/controllers/dashboard_controller.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> items = [
    'Attendance',
    'My Route',
    'Shops',
    'My Visit',
    'My Order',
    'Profile',
    'Support'
  ];
  List<String> images = [
    'assets/svg/home_user.svg',
    'assets/svg/route.svg',
    'assets/svg/home_shop.svg',
    'assets/svg/home_list.svg',
    'assets/svg/home_checklist.svg',
    'assets/svg/home_profile.svg',
    'assets/svg/call_center.svg'
  ];
  List<String> catImage = [
    'assets/svg/home_footwear.svg',
    'assets/svg/home_bag.svg',
    'assets/svg/home_jacket.svg'
  ];
  List<String> catTexts = ['Footwears', 'Bag', 'Apparels'];
  List<Color> catColors = [homeFootColor, homeBagColor, homeAppColor];
  

  DashboardController dashBoardController = Get.find();

  @override
  void onInit() {
    super.onInit();
  }
}
