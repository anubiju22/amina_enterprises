import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/textfeild/logintextfeild.dart';
import 'package:amina_enterprises/app/common_widgets/texts/login_text.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class EmployeeLoginView extends GetView<LoginController> {
  const EmployeeLoginView({Key? key}) : super(key: key);
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
      height: MediaQuery.of(context).size.height * 0.40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
        color: scaffoldBgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            const LoginText(
              text: "Employee Login",
            ),
            SizedBox(
              height: 20,
            ),
            LoginTextField(
              hintText: 'Enter your Phone Number',
              prefixIcon: Padding(
                padding: const EdgeInsets.all(15),
                child: svgWidget(
                  'assets/svg/Call.svg',
                ),
              ),
              // suffixIcon: SvgPicture.asset('assets/svg/call.svg')
            ),
            const SizedBox(
              height: 20,
            ),
            CommonButtonWidget(
              label: "GET OTP",
              onClick: () {
                Get.toNamed(Routes.OTP);
              },
            )

            // )
          ],
        ),
      ),
    );
  }
}
