import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/svg_icons/svg_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        label: 'Profile',
      ),
      // body: Container(
      //   decoration: const BoxDecoration(
      //     color: scaffoldBgColor,
      //   ),
      //   child: ListView(
      //     shrinkWrap: true,
      //     physics: const ScrollPhysics(),
      //     children: [
      //       Container(
      //         margin: const EdgeInsets.only(bottom: 10),
      //         width: double.infinity,
      //         decoration: const BoxDecoration(
      //           image: DecorationImage(
      //               image: AssetImage(
      //                 "assets/image/profile_bg.png",
      //               ),
      //               fit: BoxFit.cover),
      //         ),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 // visibility default false
      //                 IconButton(
      //                   onPressed: (() {}),
      //                   icon: Visibility(
      //                     visible: false,
      //                     child: Image.asset(
      //                       "assets/svg_icon/edit.svg",
      //                       width: 25,
      //                       height: 25,
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             // const DealerImgWidget(),
      //             const SizedBox(
      //               height: 10,
      //             ),
      //             Text("Anshad"),
      //             const SizedBox(
      //               height: 5,
      //             ),
      //             Text("C-KL-000001"),
      //           ],
      //         ),
      //       ),
      //       const EmployeeBottomWidget(),
      //     ],
      //   ),
      // )
    );
  }
}

// class EmployeeBottomWidget extends GetView<DashboardController> {
//   const EmployeeBottomWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var spacer = SizedBox(
//       height: MediaQuery.of(context).size.height * .015,
//     );
//     return Container(
//       //  height: MediaQuery.of(context).size.height * .7,
//       width: double.infinity,
//       decoration: const BoxDecoration(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(50),
//             topRight: Radius.circular(50),
//           ),
//           color: Colors.white),
//       child: ListView(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         // mainAxisAlignment: MainAxisAlignment.start,
//         // crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 //Header
//                 spacer,
//                 Text("Personal Details"),
//                 spacer,

//                 spacer,
//                 // Mobile number
//                 Row(
//                   children: [
//                     svgWidget("assets/svg_icon/phone.svg"),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Text("Anshad!"),
//                     const Spacer(),
//                   ],
//                 ),
//                 // Email
//                 spacer,
//                 Row(
//                   children: [
//                     svgWidget("assets/svg_icon/phone.svg"),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Text("Email"),
//                     const Spacer(),

//                     // const Spacer(),
//                     // IconWithOnTapWidget(
//                     //   icon: "assets/svg_icon/edit.svg",
//                     //   onTap: () {
//                     //     //controller.logout();
//                     //   },
//                     // ),
//                   ],
//                 ),

//                 spacer,
//                 Row(
//                   children: [
//                     svgWidget("assets/svg_icon/phone.svg"),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Text("Anshad!"),
//                     const Spacer(),
//                   ],
//                 ),
//                 spacer,
//                 // Divider with color
//                 devider(context),
//                 // Profile settings
//                 spacer,
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Container devider(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: MediaQuery.of(context).size.height * .005,
//       color: Colors.grey.withOpacity(.2),
//     );
//   }
// }
