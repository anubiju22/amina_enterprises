import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/productdetails_controller.dart';

class ProductSizeCategorySection extends StatelessWidget {
  const ProductSizeCategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Row(
    //   children: [
    //     SizedBox(
    //       width: 105,
    //       child: blackText("SIZE", 16, fontWeight: FontWeight.w500),
    //     ),
    //     Wrap(
    //       children: [],
    //     )
    //   ],
    // );
    return GetBuilder<ProductdetailsController>(builder: (controller) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(
          children: [
            SizedBox(
              width: 105,
              child: blackText("SIZE", 16, fontWeight: FontWeight.w500),
            ),
            Wrap(runSpacing: 5, spacing: 10, children: [
              TypeWidget(
                selected: true,
                onPressed: () {},
                text: 'CARTOON',
              ),
              const SizedBox(
                width: 10,
              ),
              TypeWidget(
                selected: false,
                onPressed: () {},
                text: 'CUT SIZE',
              ),
            ])
          ],
        ),
      );
    });
  }
}

class TypeWidget extends StatelessWidget {
  final String text;
  final bool selected;
  final Function onPressed;
  const TypeWidget({
    Key? key,
    required this.text,
    required this.selected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        onPressed();
      }),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              border: Border.all(color: redColor),
              shape: BoxShape.circle,
            ),
            child: selected
                ? Center(
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: redColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                : const SizedBox(),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
