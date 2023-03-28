import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/textfeild/logintextfeild.dart';
import 'package:amina_enterprises/app/common_widgets/textfeild/otp_textfeild.dart';
import 'package:amina_enterprises/app/common_widgets/texts/login_text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

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
        color: Color(0xfff3f3f3),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            LoginText(
              text: "Enter OTP",
            ),
            SizedBox(
              height: 20,
            ),
            OtpTextfield(
              oncomplete: (pin) {
                return null;
              },
              onchange: (pin) {
                // controller.otp = pin;
                return null;
                // return null;
              },
            ),
            TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn’t receive OTP?",
                      style: TextStyle(color: Color(0xFF818181)),
                    ),
                    Text(
                      "Resend",
                      style: TextStyle(color: primaryColor),
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            CommonButtonWidget(
              label: "VERIFY OTP",
              onClick: () {
                Get.toNamed(Routes.SHOPS);
              },
            )

            // )
          ],
        ),
      ),
    );
  }
}
