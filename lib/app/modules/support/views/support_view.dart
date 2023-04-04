import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/card/support_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/support_controller.dart';

class SupportView extends GetView<SupportController> {
  const SupportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CommonAppBar(
          label: 'Support',
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return SupportCardWidget(
                label: 'SOORAJ',
                mob: '85899 14400',
                path: 'assets/svg/boy.svg',
                items: controller.items,
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: 3));
  }
}
