import 'package:amina_enterprises/app/modules/home/controllers/dashboard_controller.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  
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
