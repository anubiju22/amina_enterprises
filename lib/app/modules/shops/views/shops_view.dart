import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shops_controller.dart';

class ShopsView extends GetView<ShopsController> {
  const ShopsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(label: 'Shops'),
      body: const Center(
        child: Text(
          'ShopsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
