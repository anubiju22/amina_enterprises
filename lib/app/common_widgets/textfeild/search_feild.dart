import 'package:flutter/material.dart';

class CommonSearchTextField extends StatelessWidget {
  final String hintText;
  final Function? onChanged;
  final Function? onPressed;

  final bool autofocus;
  final Function? onTap;
  final TextEditingController? textEditingController;
  final bool isEnabled;
  final bool? readOnly;
  const CommonSearchTextField({
    Key? key,
    this.onChanged,
    this.onPressed,
    this.autofocus = false,
    this.textEditingController,
    required this.hintText,
    this.onTap,
    this.isEnabled = false,
    this.readOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 15, color: Colors.black),
      controller: textEditingController,
      autofocus: autofocus,
      // readOnly: readOnly!,
      enabled: isEnabled,
      //  textAlign: isCenterText == null ? TextAlign.start : TextAlign.center,
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
      decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(20.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xfff3f3f3),
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xfff3f3f3),
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xfff3f3f3),
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          fillColor: const Color(0xfff3f3f3),
          filled: true,
          // filled: true,
          isDense: true,
          
          hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
          suffixIcon: textEditingController == null
              ? null
              : textEditingController!.text.isNotEmpty
                  ? IconButton(
                      onPressed: onPressed == null
                          ? null
                          : () {
                              onPressed!();
                            },
                      icon: const Icon(
                        Icons.cancel,
                        color: Colors.black,
                        size: 25,
                      )
                      // Image.asset(
                      //   "assets/icon/search.png",
                      //   width: 20,
                      //   height: 20,
                      //   color: Colors.black,
                      // ),
                      )
                  : null),
    );
  }
}
