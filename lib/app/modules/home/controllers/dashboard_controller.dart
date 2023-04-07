import 'package:amina_enterprises/app/modules/home/model/drawer_model.dart';
import 'package:amina_enterprises/app/modules/home/views/home_view.dart';
import 'package:amina_enterprises/app/modules/home/views/profile_view.dart';
import 'package:amina_enterprises/app/modules/home/views/search_view.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DashboardController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxList<Widget> widgetOptions =
      <Widget>[const HomeView(), const SearchView(), const ProfileView()].obs;
  final drawerItems = <DrawerItem>[].obs;
  final GlobalKey<ScaffoldState> dashboardScaffoldkey =
      GlobalKey<ScaffoldState>();

  @override
  void onInit() {
    super.onInit();

    drawerItems.addAll([
      DrawerItem('assets/svg/bottom_home.svg', 'Home', () {
        selectedIndex(0);
        Get.back();
      }),
      DrawerItem('assets/svg/home_user.svg', 'Attendance', () {
        Get.toNamed(Routes.ATTENDANCE_REPORT);
        Get.back();
      }),
      DrawerItem('assets/svg/route.svg', 'My Route', () {
        Get.toNamed(Routes.MYROUTE);
        Get.back();
      }),
      // DrawerItem('assets/svg/home_shop.svg', 'Shops', () {
      //   Get.back();
      // }),
      // DrawerItem('assets/svg/home_list.svg', 'My Visit', () {
      //   Get.back();
      // }),
      DrawerItem('assets/svg/home_checklist.svg', 'My Order', () {
        Get.toNamed(Routes.ORDER_HISTORY);
        Get.back();
      }),
      // DrawerItem('assets/svg/home_profile.svg', 'Profile', () {
      //   Get.back();
      // }),
      DrawerItem('assets/svg/call_center.svg', 'Support', () {
        Get.toNamed(Routes.SUPPORT);
        Get.back();
      }),
    ]);
  }
}
