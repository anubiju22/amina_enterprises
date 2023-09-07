import 'package:flutter/material.dart';

class BoarderTextField extends StatelessWidget {
  final String hintText;
  final Function? onChanged;
  final Function? onPressed;
  final bool autofocus;
  final bool enabled;
  final TextEditingController? textEditingController;
  final bool? visible;
  const BoarderTextField({
    Key? key,
    this.onChanged,
    this.onPressed,
    this.autofocus = false,
    this.enabled = true,
    this.visible = true,
    this.textEditingController,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 15, color: Colors.black),
      controller: textEditingController,
      autofocus: autofocus,
      enabled: enabled,
      onChanged: (String? value) {
        if (value == null) return;
        onChanged!(value);
      },
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12.0),
        ),

        // filled: true,
        isDense: true,
        hintStyle: const TextStyle(fontSize: 15, color: Colors.black),
        prefixIcon: IconButton(
          onPressed: onPressed == null
              ? null
              : () {
                  onPressed!();
                },
          icon: Visibility(
            visible: visible!,
            child: Image.asset(
              "assets/image/search.png",
              width: 20,
              height: 20,
              color: Colors.black,
            ),
          ),
        ),
        // suffixIcon: IconButton(
        //   onPressed: onPressed == null
        //       ? null
        //       : () {
        //           onPressed!();
        //         },
        //   icon: Visibility(
        //     visible: visible!,
        //     child: Image.asset(
        //       "assets/image/search.png",
        //       width: 20,
        //       height: 20,
        //       color: Colors.black,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
