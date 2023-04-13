import 'package:amina_enterprises/app/common_widgets/textfeild/numbertextfeild.dart';
import 'package:amina_enterprises/app/modules/productdetails/controllers/productdetails_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widgets/texts/text.dart';

class ProductCutSizeDealerBuilder extends StatelessWidget {
  const ProductCutSizeDealerBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductdetailsController>(builder: (controller) {
      return ListView.builder(
          itemCount: 1,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            // final Subcategory subcategory =
            //     controller.selectedAttribute!.subcategory[index];

            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.only(
                  top: 10, right: 10, left: 10, bottom: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Normal"),
                      const Spacer(),
                      blackText("₹ 289", 17, fontWeight: FontWeight.w500),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),

                  const SizedBox(
                    width: double.infinity,
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  // if (subcategory.isVisible!)
                  // SizedBox(
                  //   width: double.infinity,
                  //   child: Wrap(
                  //       runSpacing: 10,
                  //       spacing: 20,
                  //       runAlignment: WrapAlignment.spaceBetween,
                  //       alignment: WrapAlignment.spaceBetween,
                  //       children: subcategory.size
                  //           .map(
                  //             (cartenSize) => SizeItemTextFieldWidget(
                  //               value: cartenSize.size,
                  //               qty: cartenSize.qty,
                  //               onChanged: (String value) {
                  //                 if (value.isEmpty) return;

                  //                 controller.updateSizeQty(subcategory,
                  //                     cartenSize, value, 'CUTSIZE',
                  //                     qty: value);
                  //               },
                  //             ),
                  //           )
                  //           .toList()),
                  // ),
                  Container(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "5*8",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff393939),
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            NumberTextfeild(),
                            Spacer(),
                            Text(
                              "7*8",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff393939),
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            NumberTextfeild(),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const [
                            Text(
                              "6*8",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff393939),
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            NumberTextfeild(),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     const ext(
                    //       "Enter Required Quantity",
                    //       style: TextStyle(fontSize: 12),
                    //     ),
                    //     SizedBox(
                    //       width: 55,
                    //       height: 35,
                    //       child: TextField(
                    //         // isCenterText: true,
                    //         // inputFormate: true,
                    //         // maxLengthLimit: 3,
                    //         // textInputType: TextInputType.number,
                    //         // labelText: subcategory.requierdQty.toString(),
                    //         // textEditingController:
                    //         //     controller.totalQtyController,
                    //         onChanged: (dynamic value) {
                    //           // controller.updateCutSizeRequiredQuntity(
                    //           //     index, value);
                    //         },
                    //         // hintText: '0',
                    //       ),
                    //     )
                    //   ],
                    // ),
                  )
                ],
              ),
            );
          });
    });
  }
}

class SizeItemWidget extends StatelessWidget {
  final String value;
  final int qty;
  final Function addPress;
  final Function lessPress;
  const SizeItemWidget(
      {Key? key,
      required this.value,
      required this.qty,
      required this.addPress,
      required this.lessPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 50,
          child: Center(
            child: Text(
              value,
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 30,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Row(
              children: [
                icon("-", lessPress),
                cartValue(qty.toString()),
                icon("+", addPress)
              ],
            ),
          ),
        ),
      ],
    );
  }

  InkWell icon(String icon, Function onPressed) => InkWell(
        // splashColor: Colors.white,
        highlightColor: Colors.white,
        onTap: () {
          onPressed();
        },
        child: SizedBox(
          width: 30,
          child: Center(child: Text(icon)),
        ),
      );

  SizedBox cartValue(String value) => SizedBox(
        width: 30,
        child: Center(child: Text(value)),
      );
}
