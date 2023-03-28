import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/modules/home/controllers/dashboard_controller.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
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
          elevation: 0,
          onTap: (int index) async {
            controller.selectedIndex.value = index;
          },
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: svgWidget('assets/svg/bottom_home.svg'),
                ),
                label: 'HOME'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: svgWidget('assets/svg/search.svg',
                      color: const ColorFilter.mode(
                          primaryColor, BlendMode.srcIn)),
                ),
                label: 'SEARCH'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: svgWidget('assets/svg/home_profile.svg'),
                ),
                label: 'PROFILE')
          ]),
    );
  }
}
