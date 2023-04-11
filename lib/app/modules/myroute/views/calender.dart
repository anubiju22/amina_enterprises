// import 'package:amina_enterprises/constraints/app_colors.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';

// import '../controllers/myroute_controller.dart';

// class HorizontalCalendar extends GetView<MyrouteController> {
//   HorizontalCalendar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100,
//       child: Obx(
//         () => controller.isLoading.value
//             ? CircularProgressIndicator()
//             : ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 30,
//                 itemBuilder: (BuildContext context, int index) {
//                   final DateTime date =
//                       controller.selectedDate.value.add(Duration(days: index));
//                   // final DateTime date = DateTime.now().add(Duration(days: index));

//                   return _buildDay(date);
//                 },
//               ),
//       ),
//     );
//   }

<<<<<<< HEAD
//   Widget _buildDay(
//     DateTime date,
//   ) {
//     final formatter = DateFormat('E');
//     final dayOfWeek = formatter.format(date);

//     return GestureDetector(
//       onTap: () => controller.changeColor(),
//       child: Obx(() => Container(
//             width: 50,
//             margin: const EdgeInsets.all(5),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8.0),
//               color:
//                   // _isTapped.value
//                   //     ?
//                   // controller.color.value,
//                   controller.selectedDate.value.day == date.day
//                       ? controller.color.value
//                       : scaffoldBgColor,
//               // scaffoldBgColor,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   dayOfWeek.toUpperCase(),
//                   style: TextStyle(
//                     color: controller.selectedDate.value.day == date.day
//                         ? Colors.white
//                         : Colors.black,
//                     // controller.isSelected == true ? Colors.white : Colors.black,
//                     fontSize: 16,
//                     fontFamily: "Manrope",
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 Text(
//                   date.day.toString(),
//                   style: TextStyle(
//                     color: controller.selectedDate.value.day == date.day
//                         ? Colors.white
//                         : Colors.black,
//                     // Colors.black,
//                     fontSize: 32,
//                     fontFamily: "Manrope",
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//           )),
//     );
//   }
// }
=======
  Widget _buildDay(
    DateTime date,
  ) {
    final formatter = DateFormat('E');
    final dayOfWeek = formatter.format(date);
    RxBool _isTapped = false.obs;
    return GestureDetector(
      onTapDown: (_) => _isTapped.value = true,
      onTapUp: (_) => _isTapped.value = false,
      child: Container(
        width: 50,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color:
              // _isTapped.value
              //     ?
              controller.selectedDate.value.day == date.day
                  ? redColor
                  : scaffoldBgColor,
          // scaffoldBgColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              dayOfWeek.toUpperCase(),
              style: TextStyle(
                color: controller.selectedDate.value.day == date.day
                    ? Colors.white
                    : Colors.black,
                // controller.isSelected == true ? Colors.white : Colors.black,
                fontSize: 16,
                fontFamily: "Manrope",
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              date.day.toString(),
              style: TextStyle(
                color: controller.selectedDate.value.day == date.day
                    ? Colors.white
                    : Colors.black,
                // Colors.black,
                fontSize: 32,
                fontFamily: "Manrope",
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
>>>>>>> main
