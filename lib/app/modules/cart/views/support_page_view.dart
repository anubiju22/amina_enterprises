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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            blackText('Order Completed \nSuccessfully', 22,
                textAlign: TextAlign.center, fontWeight: FontWeight.w600),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.30,
              child: TextButton(
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
                  )),
            )
          ],
        ),
      ),
    );
  }
}
