import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/productdetails_controller.dart';

class ProductSizeCategorySection extends GetView<ProductdetailsController> {
  const ProductSizeCategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductdetailsController>(builder: (controller) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 105,
            child: blackText("SIZE", 16, fontWeight: FontWeight.w500),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RadioTextwithBorder(
                    //    items: controller.loadData,
                    selectItem: controller.selectedLoad,
                    act: (String value) {
                      controller.onClickLoad(value);
                    },
                    text: controller.iteams.first,
                  ),
                  const SizedBox(width: 15),
                  RadioTextwithBorder(
                    //    items: controller.loadData,
                    selectItem: controller.selectedLoad,
                    act: (String value) {
                      controller.onClickLoad(value);
                    },
                    text: controller.iteams.elementAt(1),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RadioTextwithBorder(
                    //    items: controller.loadData,
                    selectItem: controller.selectedLoad,
                    act: (String value) {
                      controller.onClickLoad(value);
                    },
                    text: controller.iteams.elementAt(2),
                  ),
                  const SizedBox(width: 50),
                  RadioTextwithBorder(
                    //    items: controller.loadData,
                    selectItem: controller.selectedLoad,
                    act: (String value) {
                      controller.onClickLoad(value);
                    },
                    text: controller.iteams.last,
                  ),
                ],
              )
            ],
          ),
        ],
      );
    });

    //   return GetBuilder<ProductdetailsController>(builder: (controller) {
    //     return Padding(
    //       padding: const EdgeInsets.only(bottom: 15),
    //       child: Row(
    //         children: [
    //           SizedBox(
    //             width: 105,
    //             child: blackText("SIZE", 16, fontWeight: FontWeight.w500),
    //           ),
    //           Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    //             Row(
    //               children: [
    //                 TypeWidget(
    //                   selected: true,
    //                   onPressed: () {},
    //                   text: 'CARTOON',
    //                 ),
    //                 const SizedBox(
    //                   width: 15,
    //                 ),
    //                 TypeWidget(
    //                   selected: false,
    //                   onPressed: () {},
    //                   text: 'CUT SIZE',
    //                 ),
    //               ],
    //             ),
    //             const SizedBox(
    //               height: 10,
    //             ),
    //             Row(
    //               // crossAxisAlignment: CrossAxisAlignment.start,
    //               // mainAxisAlignment: MainAxisAlignment.start,
    //               children: [
    //                 TypeWidget(
    //                   selected: false,
    //                   onPressed: () {},
    //                   text: 'SET',
    //                 ),
    //                 const SizedBox(width: 50),
    //                 TypeWidget(
    //                   selected: false,
    //                   onPressed: () {},
    //                   text: 'PAIR',
    //                 ),
    //               ],
    //             ),
    //           ])
    //         ],
    //       ),
    //     );
    //   });
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

class RadioTextwithBorder extends StatelessWidget {
  // final List<String> items;
  final String selectItem;
  final Function act;
  final String text;
  const RadioTextwithBorder(
      {super.key,
      //   required this.items,
      required this.selectItem,
      required this.act,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
          // width: double.infinity,
          // height: MediaQuery.of(context).size.height * 0.06,
          child: InkWell(
              onTap: () {
                act(text);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(children: [
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 1.5,
                            color:
                                text == selectItem ? Colors.red : Colors.grey)),
                    child: Center(
                        child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: text == selectItem
                              ? Colors.red
                              : Colors.transparent,
                          shape: BoxShape.circle),
                    )),
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
                ]),
              ))),
    );
  }
}
