import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/myvisit/views/myvisit_view.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
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

// class SelectDivision extends StatelessWidget {
//   final List<String> divisions;
//   final String selectedValue;
//   final Function act;

//   const SelectDivision(
//       {super.key,
//       required this.divisions,
//       required this.selectedValue,
//       required this.act});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
//       child: ListView(
//         shrinkWrap: true,
//         children: [
//           blackText('Choose Your Division', 20, fontWeight: FontWeight.bold),
//           const SizedBox(height: 20),
//           GetBuilder<HomeController>(builder: (c) {
//             return ListView.separated(
//                 separatorBuilder: (context, index) {
//                   return divider();
//                 },
//                 itemCount: c.divisionItems.length,
//                 shrinkWrap: true,
//                 itemBuilder: (context, index) {
//    return DivisionCardWidget(
//     label: c.divisionItems[index],
//     selectItem: c.selectedValue,
//     act: (value) {
//       c.onClickDivision(value);
//     },
//   );
// });
//           }),
//           CommonButtonWidget(
//               label: 'SUBMIT',
//               onClick: () {

//                 Get.back(result: selectedValue);
//               })
//         ],
//       ),
//     );
//   }
// }

RoundedRectangleBorder bottomSheetShape() {
  return const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(32.0),
      topRight: Radius.circular(32.0),
    ),
  );
}
