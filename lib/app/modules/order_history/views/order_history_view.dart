import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/button/sort_button.dart';
import 'package:amina_enterprises/app/common_widgets/card/order_history_card.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/modules/order_history/views/sort_bottomsheet.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:get/get.dart';

import '../controllers/order_history_controller.dart';

class OrderHistoryView extends GetView<OrderHistoryController> {
  const OrderHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        label: 'Order History',
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: AnimationLimiter(
          child: ListView.builder(
              itemCount: 4,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredList(
                    position: index,
                    child: SlideAnimation(
                      duration: const Duration(milliseconds: 350),
                      // horizontalOffset: 50.0,
                      verticalOffset: 50.0,
                      child: OrderHistoryCardWidget(
                        ordernmbr: 'KVN/ENQ/026536',
                        qnty: '44',
                        location:
                            'Crystal Building, Malad, Rathodi, Mankavu, Calicut',
                        onClick: () async {
                          Get.toNamed(Routes.ORDER_HISTORY_DETAILS);
                        },
                      ),
                    ));
              }),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * .08,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.41,
                child: CommonButtonWithIcon(
                  label: 'Sort',
                  onClick: () {
                    Get.bottomSheet(
                      const SortBottomSheetWidget(),
                      elevation: 20.0,
                      enableDrag: false,
                      backgroundColor: Colors.white,
                      shape: bootomSheetShape(),
                    );
                  },
                  icon: svgWidget("assets/svg/history_sort.svg"),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.41,
                child: CommonButtonWithIcon(
                  // ignore: prefer_const_constructors
                  icon: Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                  label: 'Filter',
                  onClick: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

RoundedRectangleBorder bootomSheetShape() {
  return const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30.0),
      topRight: Radius.circular(30.0),
    ),
  );
}
