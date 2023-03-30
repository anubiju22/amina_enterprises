import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/card/product_card.dart';
import 'package:amina_enterprises/app/modules/footwears/views/staggered_grid_view.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common_widgets/svg_icons/svg_widget.dart';
import '../controllers/footwears_controller.dart';

class FootwearsView extends GetView<FootwearsController> {
  const FootwearsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: const CommonAppBar(label: "FootWears"),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: TabBar(
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                labelColor: primaryColor,
                indicatorColor: primaryColor,
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.black,
                onTap: (int id) {},
                tabs: const [
                  Tab(
                    text: "GENTS",
                  ),
                  Tab(
                    text: "LADIES",
                  ),
                  Tab(
                    text: "KIDS",
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  ProductView(),
                  ProductView(),
                  ProductView(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          // currentIndex: controller.selectedIndex.value,
          elevation: 0,
          onTap: (int index) async {
            // controller.selectedIndex.value = index;
          },
          items: [
            BottomNavigationBarItem(
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    svgWidget('assets/svg/filter.svg'),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text('Sort')
                  ],
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    svgWidget(
                      'assets/svg/filter.svg',
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text('Filter')
                  ],
                ),
                label: ''),
          ]),
    );
  }
}
