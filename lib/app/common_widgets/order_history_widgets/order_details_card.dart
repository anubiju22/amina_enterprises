import 'package:amina_enterprises/app/common_widgets/texts/login_text.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class OrderDetailsWidget extends StatelessWidget {
  final String type;
  final String artNo;
  final String artType;
  final String mrp;
  const OrderDetailsWidget(
      {super.key,
      required this.type,
      required this.artNo,
      required this.artType,
      required this.mrp});

  @override
  Widget build(BuildContext context) {
    var sizedBox = const SizedBox(
      height: 5,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        blackText('Order Details', 16, fontWeight: FontWeight.w600),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Image.asset('assets/image/slipper.png'),
            const SizedBox(
              width: 4,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  orderType(type),
                  sizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      blackText(artNo, 18, fontWeight: FontWeight.w500),
                      Text(
                        mrp,
                        style: const TextStyle(
                            color: redColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  sizedBox,
                  greyText(artType, 12),
                  sizedBox,
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              greyText('Packing', 10),
                              sizedBox,
                              borderWidget('7 * 10')
                            ],
                          ),
                          divider(),
                          Column(
                            children: [
                              greyText('Order Qty', 10),
                              sizedBox,
                              borderWidget('1')
                            ],
                          ),
                          divider(),
                          Column(
                            children: [
                              greyText('Delivered Qty', 10),
                              sizedBox,
                              SizedBox(
                                width: 40,
                                height: 40,
                                child: QuantityTextField(
                                  inputFormate: true,
                                  isCenterText: true,
                                  isDense: true,
                                  // isEnable:
                                  //     controller.orderType == 'Customer Order'
                                  //         ? true
                                  //         : false,
                                  textInputType: TextInputType.number,
                                  maxLengthLimit: 2,
                                  hintText: '1',
                                  onChanged: (dynamic value) {
                                    if (value != null) {
                                      // controller.updateDeliveryQty(
                                      //     value.toString(), index, i);
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                        ]),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

Widget orderType(String label) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor, width: 1)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: blackText("ORDER TYPE : $label", 10),
    ),
  );
}

SizedBox divider() {
  return const SizedBox(
      width: 12,
      height: 45,
      child: VerticalDivider(thickness: 1.5, color: Color(0xFFC4C4C4)));
}

Container borderWidget(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: const Color(0xFFC4C4C4), width: .5),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Text(text),
  );
}
