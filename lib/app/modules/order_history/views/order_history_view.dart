import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/card/order_history_card.dart';
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
                          onClick: () async {
                            Get.toNamed(Routes.ORDER_HISTORY_DETAILS);
                          },
                        ),
                      ));
                }),
          ),
        ));
  }
}
