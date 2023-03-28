import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constraints/app_colors.dart';
import '../svg_icons/svg_widget.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String label;
  const CommonAppBar({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: primaryColor,
      centerTitle: false,
      leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: svgWidget('assets/svg/back_arrow.svg')),
      title: Text(
        label,
        style: const TextStyle(fontSize: 20, color: primaryColor),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: svgWidget('assets/svg/search.svg'))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
