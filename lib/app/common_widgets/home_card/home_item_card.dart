import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class HomeCardItem extends StatelessWidget {
  final String path;
  final String label;
  final Function? ontap;
  const HomeCardItem(
      {super.key, required this.path, required this.label, this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap!();
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: homeMenuColor),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 18),
                  child: svgWidget(
                    path,
                    color: redColor,
                    blendMode: BlendMode.srcIn,
                  ),
                )),
            const SizedBox(
              height: 5,
            ),
            blackText(label, 13,
                textAlign: TextAlign.center, fontWeight: FontWeight.w500)
          ],
        ),
      ),
    );
  }
}

class HomeCategories extends StatelessWidget {
  final String path;
  final String label;
  final Color color;
  final Function? onClick;

  const HomeCategories({
    super.key,
    required this.path,
    required this.label,
    required this.color,
    this.onClick,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick!();
      },
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: svgWidget(path, color: color),
              )),
          const SizedBox(
            height: 6,
          ),
          blackText(label, 14, fontWeight: FontWeight.w500)
        ],
      ),
    );
  }
}
