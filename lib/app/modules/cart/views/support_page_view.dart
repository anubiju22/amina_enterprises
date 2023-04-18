import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SupportPageView extends GetView {
  const SupportPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            blackText('Order Completed Successfully', 22,
                fontWeight: FontWeight.w600),
            TextButton(
                onPressed: () {
                  Get.offAllNamed(Routes.HOME);
                },
              style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(color: redColor)))),
                
                  child: const Text(
                    'Ok',
                    style: TextStyle(
                        fontFamily: "Manrope", color: redColor, fontSize: 17),
                  ))
          ],
        ),
      ),
    );
  }
}
