import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/modules/home/controllers/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Center(
          child: controller.widgetOptions
              .elementAt(controller.selectedIndex.value))),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
        items: [
        BottomNavigationBarItem(
            icon: svgWidget('assets/svg/bottom_home.svg'), label: 'HOME'),
        BottomNavigationBarItem(
            icon: svgWidget('assets/svg/search.svg'), label: 'SEARCH'),
        BottomNavigationBarItem(
            icon: svgWidget('assets/svg/home_profile.svg'), label: 'PROFILE')
      ]),
    );
  }
}
