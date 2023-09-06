import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/card/shop_card.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/textfeild/search_feild.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CollectPaymentView extends GetView {
  const CollectPaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const CommonAppBar(
          label: 'Add Payment',
          visibility: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.019850,
                  left: size.width * 0.0650,
                  right: size.width * 0.0650,
                ),
                child: const ShopCard(
                  shopname: "PRINCE FOOTWEAR BANDBAHAL",
                  location:
                      "Crystal Building, Malad, Rathodi, Mankavu, Calicut",
                  number: "9856254147",
                ),
              ),
              SizedBox(
                height: size.height * 0.045,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          svgWidget("assets/svg/calendar.svg"),
                          const SizedBox(
                            width: 5,
                          ),
                          greyText('Due Date', 14),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.010,
                      ),
                      redText('21 Apr 2022', 20, fontWeight: FontWeight.w500),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          svgWidget("assets/svg/currency-inr.svg"),
                          const SizedBox(
                            width: 5,
                          ),
                          greyText('Due Amount', 14),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.010,
                      ),
                      redText("₹ " "13000", 20, fontWeight: FontWeight.w500),
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.040,
                  left: size.width * 0.0650,
                  right: size.width * 0.0650,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    blackText("Enter Amount : ", 20,
                        fontWeight: FontWeight.w500),
                    const SizedBox(
                      height: 10,
                    ),
                    const Form(
                        // key: paymentState.formKey,
                        child: CommonSearchTextField(
                      hintText: '00000',
                    ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.0550,
                ),
                child: SizedBox(
                    height: size.height * 0.09,
                    width: size.width * 0.90,
                    child: CommonButtonWidget(
                      label: 'SUBMIT', onClick: () {},
                      //   isLoading: paymentState.isPaymentLoading,
                    )),
              ),
            ],
          ),
        ));
  }
}
