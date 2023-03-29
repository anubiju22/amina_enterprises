import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String artNo;
  final String image;
  final String mrp;
  final Function onTap;
  final String brandName;
  final Function? act;
  final List<String>? colors;
  const ProductCard({
    Key? key,
    required this.productName,
    required this.artNo,
    this.colors,
    required this.image,
    required this.onTap,
    required this.mrp,
    required this.brandName,
    this.act,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (() => onTap()),
        child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Column(children: [
            Expanded(
              child: Image.network(
                image,
                fit: BoxFit.cover,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      color: primaryColor,
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, exception, stackTrack) => const Center(
                  child: Icon(
                    Icons.error,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                blackText(artNo, 18),
                blackText(mrp, 18),
              ],
            ),
            Row(
              children: [
                greyText(brandName, 18),
              ],
            ),
          ]),
        ));
  }
}
