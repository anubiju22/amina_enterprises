import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCardItem extends StatelessWidget {
  final String path;
  final String label;
  const HomeCardItem({super.key, required this.path, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          elevation: 4,
          color: homeMenuColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
            child: svgWidget(path),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Center(child: Text(label, style: const TextStyle(fontSize: 14)))
      ],
    );
  }
}

class HomeCategories extends StatelessWidget {
  final String path;
  final String label;
  final Color color;

  const HomeCategories(
      {super.key,
      required this.path,
      required this.label,
      required this.color});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.20,
            height: MediaQuery.of(context).size.width * 0.20,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            child: svgWidget(path)),
        SizedBox(
          height: 10,
        ),
        blackText(label, 14, fontWeight: FontWeight.w400)
      ],
    );
  }
}
