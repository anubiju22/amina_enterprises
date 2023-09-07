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

      // bottomNavigationBar: SizedBox(
      //   height: MediaQuery.of(context).size.height * .08,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         bottomButton(context, 'Sort', Icons.sort, () {
      //           Get.bottomSheet(
      //             const SortBottomSheetWidget(),
      //             elevation: 20.0,
      //             enableDrag: false,
      //             backgroundColor: Colors.white,
      //             shape: bootomSheetShape(),
      //           );
      //         }),
      //         VerticalDivider(
      //           width: 1,
      //           color: Colors.grey.shade300,
      //         ),
      //         bottomButton(context, 'Filter', Icons.filter_list, () {}),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

InkWell bottomButton(
    BuildContext context, String label, IconData icon, Function act) {
  return InkWell(
    onTap: () {
      act();
    },
    child: SizedBox(
      width: MediaQuery.of(context).size.width * .4,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          const SizedBox(
            width: 8,
          ),
          Text(label),
        ],
      ),
    ),
  );
}

RoundedRectangleBorder bootomSheetShape() {
  return const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30.0),
      topRight: Radius.circular(30.0),
    ),
  );
}
