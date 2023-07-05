import 'package:amina_enterprises/app/modules/productdetails/controllers/productdetails_controller.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widgets/texts/text.dart';

class ProductColorSection extends StatelessWidget {
  const ProductColorSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductdetailsController>(builder: (controller) {
      return Obx(() => controller.isloading.value
          ? CircularProgressIndicator()
          : Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: blackText("COLOR", 16, fontWeight: FontWeight.w500),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      runSpacing: 5,
                      spacing: 10,
                      children: controller.product!.attributes
                          .map(
                            (attribute) => ColorWidget(
                              color: attribute.color,
                              onTap: () {
                                // send to index
                                // controller.changeSelectedAttribute(attribute);
                              },
                              colorCode: attribute.colorCode,
                              selected: true,
                            ),
                          )
                          .toList(),
                      // ColorWidget(
                      //   color: "Blue",
                      //   onTap: () {
                      //     // send to index
                      //     // controller.changeSelectedAttribute(attribute);
                      //   },
                      //   colorCode: "",
                      //   selected: false,
                      // )
                    ),
                  )
                ],
              ),
            ));
    });
  }
}

class ColorWidget extends StatelessWidget {
  final String colorCode;
  final String color;
  final bool selected;
  final Function onTap;
  const ColorWidget(
      {Key? key,
      required this.colorCode,
      required this.color,
      required this.onTap,
      required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (() {
            onTap();
          }),
          child: SizedBox(
            height: 30,
            child: Container(
              width: selected ? 40 : 35,
              height: selected ? 40 : 35,
              decoration: BoxDecoration(
                color: selected ? null : redColor,
                border: Border.all(
                    color: Color(
                        int.parse(colorCode.substring(1, 7), radix: 16) +
                            0xFF000000)),
//                 Color hexToColor(String code) {
//   return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
// }
                shape: BoxShape.circle,
              ),
              child: selected
                  ? Center(
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color(
                              int.parse(colorCode.substring(1, 7), radix: 16) +
                                  0xFF000000),
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  : const SizedBox(),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 15,
          child: Center(
            child: Text(
              color,
              style: TextStyle(
                fontSize: selected ? 10 : 8,
                color: selected ? Colors.black : Colors.grey,
              ),
            ),
          ),
        )
      ],
    );
  }
}
