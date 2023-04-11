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
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: MediaQuery.of(context).size.height,
            ),
            decoration: const BoxDecoration(gradient: primaryColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(child: Image.asset("assets/logo/logo.png")),
                      // ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Container(
                      decoration: const BoxDecoration(
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
                            const SizedBox(
                              height: 30,
                            ),
                            const LoginText(
                              text: "Enter OTP",
                            ),
                            const SizedBox(
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
                                  children: const [
                                    Text(
                                      "Didn’t receive OTP?",
                                      style:
                                          TextStyle(color: Color(0xFF818181)),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Resend",
                                      style: TextStyle(color: redColor),
                                    )
                                  ],
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            CommonButtonWidget(
                              label: "VERIFY OTP",
                              onClick: () {
                                Get.toNamed(Routes.HOME);
                              },
                            )

                            // )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
