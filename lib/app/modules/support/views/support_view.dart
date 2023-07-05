import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/card/support_card.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/support_controller.dart';

class SupportView extends GetView<SupportController> {
  const SupportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldBgColor,
        appBar: const CommonAppBar(
          label: 'Support',
        ),
        body: Obx(() => ListView.separated(
            itemBuilder: (context, index) {
              return SupportCardWidget(
                label: controller.contactList[index].name,
                mob: controller.contactList[index].mob,
                items: controller.items,
                email: controller.contactList[index].email,
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                thickness: 2,
                color: Colors.white,
              );
            },
            itemCount: controller.contactList.length)));
  }
}
