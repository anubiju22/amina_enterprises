import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:amina_enterprises/constraints/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectDivision extends StatelessWidget {
  final List<String> divisions;

  final RxString selectedItem = ''.obs;

  SelectDivision({
    super.key,
    required this.divisions,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: ListView(
        shrinkWrap: true,
        children: [
          blackText('Choose Your Division', 20, fontWeight: FontWeight.bold),
          const SizedBox(height: 20),
          ListView.separated(
              separatorBuilder: (context, index) {
                return divider();
              },
              itemCount: divisions.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Obx(
                  () => Theme(
                    data: ThemeData(
                      unselectedWidgetColor: redColor,
                    ),
                    child: RadioListTile(
                        title: Text(
                          divisions[index],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        activeColor: redColor,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: divisions[index],
                        groupValue: selectedItem.value,
                        onChanged: (value) {
                          selectedItem.value = value.toString();
                        }),
                  ),
                );
              }),
          CommonButtonWidget(
              label: 'SUBMIT',
              onClick: () {
                Get.back(result: selectedItem.value);
              })
        ],
      ),
    );
  }
}

Future<dynamic> openDialog(
  String title,
  String subTitle,
) {
  return Get.dialog(AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    titlePadding: EdgeInsets.zero,
    contentPadding: EdgeInsets.zero,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            icon: const Icon(
              Icons.close,
              // size: 20,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: blackText(title, 20, fontWeight: FontWeight.w600),
        ),
      ],
    ),
    content: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      child: blackText(subTitle, 17),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(color: Colors.grey)))),
                  onPressed: () {
                    Get.back(result: false);
                  },
                  child: blackText('Cancel', 17)),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(color: redColor)))),
                  onPressed: () {
                    Get.back(result: true);
                  },
                  child: const Text(
                    'Ok',
                    style: TextStyle(
                        fontFamily: "Manrope", color: redColor, fontSize: 17),
                  )),
            )
          ],
        ),
      ),
    ],
  ));
}

Future<dynamic> routeDialog() {
  return Get.dialog(AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    titlePadding: EdgeInsets.zero,
    contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
    content: Column(mainAxisSize: MainAxisSize.min, children: [
      svgWidget('assets/svg/geo_location.svg'),
      const SizedBox(
        height: 25,
      ),
      blackText('You’re Out Of Shop Premises', 18, fontWeight: FontWeight.w700),
      const SizedBox(
        height: 6,
      ),
      greyText('Do you want to continue?', 16, fontWeight: FontWeight.w500),
      divider1(),
    ]),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextButton(
                  // style: ButtonStyle(
                  //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(15),
                  //         side: const BorderSide(color: Colors.grey)))),
                  onPressed: () {
                    Get.back(result: false);
                  },
                  child: blackText('Cancel', 17)),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextButton(
                  // style: ButtonStyle(
                  //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(15),
                  //         side: const BorderSide(color: redColor)))),
                  onPressed: () {
                    Get.back(result: true);
                  },
                  child: const Text(
                    'Yes',
                    style: TextStyle(
                        fontFamily: "Manrope", color: redColor, fontSize: 17),
                  )),
            )
          ],
        ),
      ),
    ],
  ));
}

RoundedRectangleBorder bottomSheetShape() {
  return const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(32.0),
      topRight: Radius.circular(32.0),
    ),
  );
}
