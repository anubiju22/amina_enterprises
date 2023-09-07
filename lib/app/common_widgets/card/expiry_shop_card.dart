import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ExpiryShopCard extends StatelessWidget {
  final String image;
  final String name;
  final String qty;

  const ExpiryShopCard(
      {super.key, required this.image, required this.name, required this.qty});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(image),
            const SizedBox(
              width: 5,
            ),
            blackText(name, 15, fontWeight: FontWeight.w500),
            const Spacer(),
            Row(
              children: [
                greyText("Qty:", 15),
                blackText(qty, 15, fontWeight: FontWeight.w500),
              ],
            ),
          ],
        ).paddingAll(12),
       
      ],
    );
  }
}

class ColoredDottedLine extends CustomPainter {
  final Color color;

  ColoredDottedLine({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    const double dashWidth = 5;
    const double dashSpace = 3;

    double currentX = 0;

    while (currentX < size.width) {
      canvas.drawLine(
        Offset(currentX, size.height / 2),
        Offset(currentX + dashWidth, size.height / 2),
        paint,
      );
      currentX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
