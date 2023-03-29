import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/footwears_controller.dart';

class StackedWidgets extends GetView<FootwearsController> {
  final List<Widget> items;
  final TextDirection direction;
  final double size;
  final double xShift;

  const StackedWidgets({
    Key? key,
    required this.items,
    this.direction = TextDirection.ltr,
    this.size = 20,
    this.xShift = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allItems = items
        .asMap()
        .map((index, item) {
          final left = size - xShift;

          final value = Container(
            width: size,
            height: size,
            margin: EdgeInsets.only(left: left * index),
            child: item,
          );

          return MapEntry(index, value);
        })
        .values
        .toList();

    return Wrap(
      spacing: -10,
      runSpacing: -15,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Stack(
          children: direction == TextDirection.ltr
              ? allItems.reversed.toList()
              : allItems,
        ),
      ],
    );
    // (
    //   children: direction == TextDirection.ltr
    //       ? allItems.reversed.toList()
    //       : allItems,
    // );
  }
}

// Wrap(
//       spacing: -10,
//       runSpacing: -15,
//       crossAxisAlignment: WrapCrossAlignment.center,
//       children: [
//         isVisibleFirstCard
//             ? SvgPicture.asset(svgAssets.actMemIcon)
//             : const SizedBox(),
//         Stack(
//           children: direction == TextDirection.ltr
//               ? allItems.reversed.toList()
//               : allItems,
//         ),
//       ],
//     )