import 'package:amina_enterprises/app/common_widgets/button/login_type_container.dart';

import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomWidget(),
        backgroundColor: const Color(0xFF033EB2),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/logo/logo.png")),
          ],
        ));
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.44,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
        color: scaffoldBgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: blackText("Choose Your Login", 24,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 40,
            ),
            LoginTypeContainer(
              icon: "assets/svg/employee_profile.svg",
              label: "Employee",
              buttonClick: () {
                Get.toNamed(Routes.EMPLOYEE_LOGIN);
              },
              color: primaryColor,
            ),
            const SizedBox(
              height: 30,
            ),
            LoginTypeContainer(
              icon: "assets/svg/home_profile.svg",
              label: "Retailer Customer",
              buttonClick: () {
                Get.toNamed(Routes.OTP);
              },
              color: const Color(0xFF5562D7),
            ),

            // )
          ],
        ),
      ),
    );
  }
}
