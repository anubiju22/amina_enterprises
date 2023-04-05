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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            elevation: 4,
            color: homeMenuColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.5, vertical: 15.5),
              child: svgWidget(path),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 14,
                  fontFamily: "Manrope",
                  fontWeight: FontWeight.w500))
        ],
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.width * 0.20,
              decoration: BoxDecoration(shape: BoxShape.circle, color: color),
              child: svgWidget(path)),
          const SizedBox(
            height: 10,
          ),
          blackText(label, 14, fontWeight: FontWeight.w500)
        ],
      ),
    );
  }
}
