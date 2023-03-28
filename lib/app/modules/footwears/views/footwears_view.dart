import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/footwears_controller.dart';

class FootwearsView extends GetView<FootwearsController> {
  const FootwearsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBar(label: "FootWears"),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(
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
            ],
          ),
        ));
  }
}
