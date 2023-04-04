import 'package:amina_enterprises/app/common_widgets/button/login_type_container.dart';
import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';

import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/textfeild/logintextfeild.dart';
import 'package:amina_enterprises/app/common_widgets/texts/login_text.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/login/views/employee_login.dart';
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
        bottomNavigationBar: BottomWidget(),
        backgroundColor: Color(0xFF033EB2),
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
      height: MediaQuery.of(context).size.height * 0.45,
      decoration: BoxDecoration(
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
            SizedBox(
              height: 30,
            ),
            Center(
              child: blackText("Choose Your Login", 24,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
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
            SizedBox(
              height: 20,
            ),
            LoginTypeContainer(
              icon: "assets/svg/home_profile.svg",
              label: "Retailer Customer",
              buttonClick: () {
                Get.toNamed(Routes.OTP);
              },
              color: Color(0xFF5562D7),
            ),

            // )
          ],
        ),
      ),
    );
  }
}
