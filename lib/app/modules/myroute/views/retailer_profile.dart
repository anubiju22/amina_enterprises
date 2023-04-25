import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/home/views/profile_view.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/myroute_controller.dart';

class RetailerProfile extends GetView<MyrouteController> {
  const RetailerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(label: 'Profile'),
      body: Container(
        decoration: const BoxDecoration(
          color: scaffoldBgColor,
        ),
        child: ListView(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const ProfileImgWidget(),
                const SizedBox(
                  height: 5,
                ),
                blackText(controller.shops, 16, fontWeight: FontWeight.w600),
                const SizedBox(
                  height: 5,
                ),
                blackText("C-KL-000001", 14, fontWeight: FontWeight.w500),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            const EmployeeBottomWidget(
              name: 'Anshad',
              phone: "+91 8563524047",
              email: "anshad000@gmail.com",
              visibility: true,
            ),
          ],
        ),
      ),
    );
  }
}
