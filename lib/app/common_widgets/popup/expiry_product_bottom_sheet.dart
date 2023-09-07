import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/textfeild/search_feild.dart';
import 'package:amina_enterprises/app/common_widgets/textfeild/textfield_with_baorder.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpiryProductBottomSheet extends StatelessWidget {
  final String shopname;
  final String location;
  final int length;
  final Function ontap;

  const ExpiryProductBottomSheet(
      {super.key,
      required this.shopname,
      required this.location,
      required this.ontap,
      required this.length});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 50,
          decoration: const BoxDecoration(
              gradient: primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: svgWidget('assets/svg/back_arrow.svg')),
              const Text(
                'Best Selling Shops',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ).paddingOnly(left: 80),
            ],
          ).paddingOnly(left: 15),
        ),
        const SizedBox(
          height: 4,
        ),
        BoarderTextField(
          hintText: "Search Shop....",
          onChanged: (String value) {},
        ).paddingAll(10),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  ontap();
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      blackText(shopname, 15, fontWeight: FontWeight.w500)
                          .paddingOnly(left: 2),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          svgWidget('assets/svg/location.svg'),
                          const SizedBox(
                            width: 5,
                          ),
                          greyText(location, 12, fontWeight: FontWeight.w500),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        color: Color(0xffE2E2E2),
                        thickness: 1.5,
                      ),
                    ],
                  ).paddingAll(5),
                ).paddingOnly(left: 15, top: 5, right: 15),
              );
            },
          ),
        ),
      ],
    );
  }
}

RoundedRectangleBorder bootomSheetShape() {
  return const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30.0),
      topRight: Radius.circular(30.0),
    ),
  );
}
