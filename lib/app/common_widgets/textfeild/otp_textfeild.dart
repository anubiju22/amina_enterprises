import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore: must_be_immutable
class OtpTextfield extends StatelessWidget {
  FormFieldValidator oncomplete;
  FormFieldValidator onchange;
  OtpTextfield({super.key, required this.oncomplete, required this.onchange});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      // backgroundColor: Colors.white,
      autoFocus: true,
      appContext: context,
      length: 4,
      animationType: AnimationType.fade,
      enableActiveFill: true,

      pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(16),
          fieldHeight: 60,
          fieldWidth: 60,
          // fieldOuterPadding: EdgeInsets.all(10),
          borderWidth: 1,
          inactiveColor: Colors.white,
          inactiveFillColor: Colors.white,
          activeFillColor: Colors.white,
          selectedFillColor: Colors.white,
          selectedColor: Colors.white,
          activeColor: Colors.white),
      animationDuration: const Duration(milliseconds: 300),
      keyboardType: TextInputType.number,
      cursorColor: Get.isDarkMode ? Colors.white : Colors.black,
      onCompleted: oncomplete,
      onChanged: onchange,
      beforeTextPaste: (text) {
        //print("Allowing to paste $text");
        return true;
      },
    );
  }
}
