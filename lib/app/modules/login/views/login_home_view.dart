import 'package:amina_enterprises/app/common_widgets/button/login_type_container.dart';

import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: MediaQuery.of(context).size.height,
            ),
            decoration: const BoxDecoration(gradient: primaryColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: Image.asset("assets/logo/logo.png")),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),

                          Center(
                            child: blackText("Choose Your Login", 24,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          LoginTypeContainer(
                            icon: "assets/svg/employee_profile.svg",
                            label: "Employee",
                            buttonClick: () {
                              Get.toNamed(Routes.EMPLOYEE_LOGIN);
                            },
                            color: redColor,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          LoginTypeContainer(
                            icon: "assets/svg/home_profile.svg",
                            label: "Retailer Customer",
                            buttonClick: () {
                              Get.toNamed(Routes.RETAILER_LOGIN);
                            },
                            color: red2Color,
                          ),

                          // )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

// class BottomWidget extends StatelessWidget {
//   const BottomWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: MediaQuery.of(context).size.height * 0.44,
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(32),
//           topRight: Radius.circular(32),
//         ),
//         color: scaffoldBgColor,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 28),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(
//               height: 30,
//             ),
//             Center(
//               child: blackText("Choose Your Login", 24,
//                   fontWeight: FontWeight.w700),
//             ),
//             const SizedBox(
//               height: 40,
//             ),
//             LoginTypeContainer(
//               icon: "assets/svg/employee_profile.svg",
//               label: "Employee",
//               buttonClick: () {
//                 Get.toNamed(Routes.EMPLOYEE_LOGIN);
//               },
//               color: redColor,
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             LoginTypeContainer(
//               icon: "assets/svg/home_profile.svg",
//               label: "Retailer Customer",
//               buttonClick: () {
//                 Get.toNamed(Routes.RETAILER_LOGIN);
//               },
//               color: red2Color,
//             ),

//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }
