import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonSearchField extends StatelessWidget {
  final String hintText;
  final bool? isEnable;
  final bool? inputFormate;
  final bool? isCenterText;
  final FormFieldValidator? validator;
  final Widget? prefixIcon;
  final String? labelText;
  final Function? onChanged;
  final Widget? suffixIcon;
  final int? maxLengthLimit;
  final TextInputType? textInputType;
  final Function? onTap;
  final bool obscureText;
  final bool isDense;
  final double horizotalPadding;
  final TextEditingController? textEditingController;
  final double? fontSize;
  final double borderRadius;
  const CommonSearchField(
      {super.key,
      required this.hintText,
      this.isEnable,
      this.inputFormate,
      this.isCenterText,
      this.validator,
      this.prefixIcon,
      this.labelText,
      this.onChanged,
      this.suffixIcon,
      this.maxLengthLimit,
      this.textInputType,
      this.onTap,
      this.obscureText = false,
      this.horizotalPadding = 10,
      this.isDense = false,
      this.textEditingController,
      this.fontSize,
      this.borderRadius = 15});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      controller: textEditingController,
      enabled: isEnable ?? true,
      inputFormatters: inputFormate == null
          ? null
          : [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(maxLengthLimit)
            ],
      textAlign: isCenterText == null ? TextAlign.start : TextAlign.center,
      onTap: onTap == null
          ? null
          : () {
              onTap!();
            },
      onChanged: onChanged == null
          ? null
          : (String? value) {
              onChanged!(value);
            },
      style: TextStyle(fontSize: fontSize ?? 15),
      keyboardType: textInputType ?? TextInputType.text,
      decoration: InputDecoration(
        fillColor: Colors.white,
        contentPadding:
            EdgeInsets.symmetric(vertical: 5, horizontal: horizotalPadding),
        hintStyle: const TextStyle(fontSize: 14),
        labelStyle: const TextStyle(fontSize: 14, color: Colors.grey),
        filled: true,
        isDense: isDense,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF939393), width: .5),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF939393), width: .5),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF939393), width: .5),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        hintText: hintText,
        labelText: labelText,
      ),
    );
  }
}
