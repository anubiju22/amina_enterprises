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
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex.value,
            elevation: 0,
            onTap: (int index) async {
              controller.selectedIndex.value = index;
            },
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: svgWidget('assets/svg/bottom_home.svg',
                        color: controller.selectedIndex.value == 0
                            ? redColor
                            : Colors.black),
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: svgWidget('assets/svg/bottom_search.svg',
                        color: controller.selectedIndex.value == 1
                            ? redColor
                            : Colors.black),
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: svgWidget('assets/svg/bottom_profile.svg',
                        color: controller.selectedIndex.value == 2
                            ? redColor
                            : Colors.black),
                  ),
                  label: 'Profile')
            ]),
      ),
    );
  }
}
