import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constraints/app_colors.dart';
import '../svg_icons/svg_widget.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String label;
  final bool? visibility;
  const CommonAppBar({super.key, required this.label, this.visibility = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(gradient: primaryColor),
      ),
      centerTitle: false,
      leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: svgWidget('assets/svg/back_arrow.svg')),
      title: Text(
        label,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
      actions: [
        Visibility(
          visible: visibility!,
          child: IconButton(
              onPressed: () {
                Get.toNamed(Routes.CART);
              },
              icon: svgWidget('assets/svg/shop_cart.svg')),
        ),
        IconButton(onPressed: () {}, icon: svgWidget('assets/svg/search.svg')),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
