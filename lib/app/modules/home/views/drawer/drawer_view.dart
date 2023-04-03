import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/home/controllers/dashboard_controller.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerView extends GetView<DashboardController> {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
              child: Image.asset(
            'assets/logo/drawer_logo.png',
            height: size.height * 0.15,
          )).paddingOnly(top: 30),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.drawerItems.length,
              itemBuilder: (context, index) {
                return Obx(
                  () => SingleChildScrollView(
                    child: DrawerCard(
                      path: controller.drawerItems[index].image,
                      label: controller.drawerItems[index].label,
                      onPressed: controller.drawerItems[index].onClick,
                    ),
                  ),
                ).paddingOnly(left: 20);
              }),
          const SizedBox(
            height: 25,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: greyText("Powered By", 14)),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Image.asset(
                  "assets/logo/git_logo.png",
                  height: 50,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: blackText("BuildVersion:  1.0.0", 14),
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}

class DrawerCard extends StatelessWidget {
  final String path;
  final String label;
  final Function? onPressed;

  const DrawerCard(
      {super.key, required this.path, required this.label, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed!();
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.12,
            height: MediaQuery.of(context).size.height * 0.085,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: homeMenuColor),
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: svgWidget(path),
            ),
          ),
          const SizedBox(
            width: 22,
          ),
          blackText(label, 14, fontWeight: FontWeight.w500)
        ],
      ),
    );
  }
}
