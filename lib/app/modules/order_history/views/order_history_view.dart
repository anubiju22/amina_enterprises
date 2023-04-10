import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/card/order_history_card.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

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
          child: ListView.builder(
              itemCount: 4,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                return OrderHistoryCardWidget(
                  onClick: () async {
                    Get.toNamed(Routes.ORDER_HISTORY_DETAILS);
                  },
                );
              }),
        ));
  }
}
