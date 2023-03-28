import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/modules/home/controllers/dashboard_controller.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBar extends GetView<DashboardController>
    implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: primaryColor,
      leading: InkWell(
        onTap: () {},
        child: svgWidget('assets/svg/menu.svg'),
      ),
      centerTitle: true,
      title: const Text(
        'HOME',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w800, fontSize: 20),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: svgWidget('assets/svg/search.svg'))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
