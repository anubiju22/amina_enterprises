import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/login_text.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widgets/textfeild/numbertextfeild.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                "https://icon2.cleanpng.com/20180323/eaq/kisspng-slipper-footwear-shoe-sandal-flip-flops-men-shoes-5ab57871171a07.8676672615218422890946.jpg",
                width: MediaQuery.of(context).size.width * .3,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              blackText(" GP4300", 18,
                                  fontWeight: FontWeight.w500),
                              greyText("Gents Covering", 12,
                                  fontWeight: FontWeight.w400),
                            ],
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon:
                                  svgWidget("assets/svg/delete.svg", size: 19))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "₹ 289",
                            style: TextStyle(
                              color: Color(0xffd80005),
                              fontSize: 18,
                              fontFamily: "Manrope",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "CARTON",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xff2f2f2f),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
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
              SizedBox(
                width: 15,
              ),
              DeleteButton(),
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
              DeleteButton(),
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
              DeleteButton(),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          const Divider(
            thickness: 5,
            color: Color(0xFFF3F3F3),
          ),
          SizedBox(
            height: 270,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                blackText("Total Amount", 18, fontWeight: FontWeight.w400),
                const Text(
                  "₹5252 ",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFD80005),
                    fontSize: 18,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DeleteButton extends StatelessWidget {
  const DeleteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          color: Colors.grey,
          style: BorderStyle.solid,
        ),
      ),
      child: SizedBox(
        child: IconButton(
            onPressed: () {},
            icon: svgWidget("assets/svg/delete.svg", size: 15)),
      ),
    );
  }
}
