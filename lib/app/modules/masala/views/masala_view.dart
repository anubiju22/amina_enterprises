import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';

import 'package:amina_enterprises/app/modules/masala/views/staggered_grid_view.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/masala_controller.dart';

class MasalaView extends GetView<MasalaController> {
  const MasalaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: const CommonAppBar(
        label: "Products"
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: TabBar(
            
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                labelColor: redColor,
                indicatorColor: redColor,
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.black,
                onTap: (int id) {},
                tabs: const [
                  Tab(
                    text: "BLENDED MASALA",
                  ),
                  Tab(
                    text: "SPICES POWDER",
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  ProductView(),
                  ProductView(),
                ],
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     // currentIndex: controller.selectedIndex.value,
      //     elevation: 0,
      //     onTap: (int index) async {
      //       // controller.selectedIndex.value = index;
      //     },
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               svgWidget('assets/svg/filter.svg'),
      //               const SizedBox(
      //                 width: 4,
      //               ),
      //               const Text('Sort')
      //             ],
      //           ),
      //           label: ''),
      //       BottomNavigationBarItem(
      //           icon: Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               svgWidget(
      //                 'assets/svg/filter.svg',
      //               ),
      //               const SizedBox(
      //                 width: 4,
      //               ),
      //               const Text('Filter')
      //             ],
      //           ),
      //           label: ''),
      //     ]),

  
    );
  }
}


