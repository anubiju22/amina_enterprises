import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginTextField extends StatelessWidget {
  final String hintText;
  final bool? isEnable;
  final FormFieldValidator? validator;
  // final IconData? prefixIcon;

  final Widget? prefixIcon;
  final TextInputType? textInputType;
  final bool obscureText;
  final Function? suffixIconClick;
  final TextEditingController? textEditingController;

  const LoginTextField(
      {Key? key,
      this.isEnable,
      this.textInputType,
      this.suffixIconClick,
      // this.prefixIcon,
      this.prefixIcon,
      required this.hintText,
      this.obscureText = false,
      this.textEditingController,
      this.validator})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        textAlign: TextAlign.start,
        validator: validator,

        obscureText: obscureText,
        controller: textEditingController,
        enabled: isEnable ?? true,
        style: const TextStyle(fontSize: 17, letterSpacing: 2.0),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'^[0-9][0-9]*')),
          LengthLimitingTextInputFormatter(10),
        ],
        decoration: InputDecoration(
          fillColor: Colors.white,
          // contentPadding: EdgeInsets.symmetric(horizontal: 15),
          hintStyle: const TextStyle(
            color: Color(0xff7b7b7b),
            fontSize: 16,
            fontFamily: "Manrope",
            fontWeight: FontWeight.w500,
          ),
          filled: true,
          isDense: true,
          // border: OutlineInputBorder(
          //   borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
          //   borderRadius: BorderRadius.circular(16.0),
          // ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          prefixIcon: prefixIcon,
          // border: const OutlineInputBorder(
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(10),
          //   ),
          // ),
          hintText: hintText,
        ),
        //   borderSide: BorderSide(color: Colors.grey, width: 0.4),
        // ),
      ),
    );
  }
}
