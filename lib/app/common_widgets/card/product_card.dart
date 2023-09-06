import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/footwears/views/stackcolor.dart';

import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String artNo;
  final String image;
  final String mrp;
  final Function onTap;
  final String brandName;
  final Function? act;
  final Color colors, color;
  const ProductCard({
    Key? key,
    required this.artNo,
    required this.colors,
    required this.image,
    required this.onTap,
    required this.mrp,
    required this.brandName,
    this.act,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (() => onTap()),
        child: Container(
          padding: const EdgeInsets.all(15),
          height: 200,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Column(children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,

                  // loadingBuilder: (BuildContext context, Widget child,
                  //     ImageChunkEvent? loadingProgress) {
                  //   if (loadingProgress == null) return child;
                  //   return Center(
                  //     child: CircularProgressIndicator(
                  //       color: redColor,
                  //       value: loadingProgress.expectedTotalBytes != null
                  //           ? loadingProgress.cumulativeBytesLoaded /
                  //               loadingProgress.expectedTotalBytes!
                  //           : null,
                  //     ),
                  //   );
                  // },
                  // errorBuilder: (context, exception, stackTrack) =>
                  //     const Center(
                  //   child: Icon(
                  //     Icons.error,
                  //     color: redColor,
                  //   ),
                  // ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                blackText(artNo, 12, fontWeight: FontWeight.w600),
                // Text(
                //   "₹ $mrp",
                //   style: const TextStyle(
                //       fontFamily: "Manrope",
                //       color: redColor,
                //       fontSize: 18,
                //       fontWeight: FontWeight.w700),
                // ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                greyText(brandName, 12),
                // overlapped(
                //   color,
                //   colors,
                // ),
                //  StackedWidgets(
                //     direction: TextDirection.rtl,
                //     items: colors.map((color) => (color)).toList(),
                //     size: 20,
                //     xShift: 10,
                //   )
              ],
            ),
          ]),
        ));
  }
}
