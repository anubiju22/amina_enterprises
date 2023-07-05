import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/textfeild/logintextfeild.dart';
import 'package:amina_enterprises/app/common_widgets/texts/login_text.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class RetailerLoginView extends GetView<LoginController> {
  const RetailerLoginView({Key? key}) : super(key: key);
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
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                        ),
                        color: scaffoldBgColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Form(
                          key: controller.formKey3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const LoginText(
                                text: "Retailer Customer Login",
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                              ),
                              LoginTextField(
                                hintText: 'Enter your Phone Number',
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: svgWidget(
                                    'assets/svg/Call.svg',
                                  ),
                                ),
                                textEditingController:
                                    controller.mobileNoController,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Enter Phone Number';
                                  } else if (value.toString().length != 10) {
                                    return 'Invalid Phone Number';
                                  }
                                  return null;
                                },
                                // suffixIcon: SvgPicture.asset('assets/svg/call.svg')
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                              ),
                              Obx(
                                () => CommonButtonWidget(
                                  isLoading:
                                      controller.isCustomerAuthLoading.value,
                                  label: "GET OTP",
                                  onClick: () async {
                                    // Get.toNamed(Routes.OTP);
                                    if (controller.formKey3.currentState!
                                        .validate()) {
                                      await controller.customerAuth();
                                      controller.mobileNoController.clear();
                                    }
                                  },
                                ),
                              ),
                              // )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
          ),
        ));
  }
}
