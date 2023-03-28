///==========================================
///    Title: OTP textfield
///    Author: Vaisakh
///    Date:   04 May 2022
///===========================================
///    Modified On:   04 May 2022
///    Title:
///    Modified by: vaisakh
///===========================================

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
      autoFocus: true,
      appContext: context,
      length: 4,
      animationType: AnimationType.fade,
      textStyle: TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(16),
        fieldHeight: 50,
        fieldWidth: 50,
        borderWidth: 0,
        activeColor: const Color(0xFFFFFFFF),
        selectedColor: const Color(0xFFFFFFFF),
        activeFillColor: const Color(0xFFFFFFFF),
        disabledColor: const Color(0xFFFFFFFF),
        errorBorderColor: const Color(0xFFFFFFFF),
        inactiveColor: const Color(0xFFFFFFFF),
        inactiveFillColor: const Color(0xFFFFFFFF),
        selectedFillColor: const Color(0xFFFFFFFF),
      ),
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