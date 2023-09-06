import 'package:flutter/material.dart';

class NumberTextfeild extends StatelessWidget {
  const NumberTextfeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 25,
      child: TextField(
        textAlign: TextAlign.center,
        // controller: someTextXontroller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Hint Text',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              width: 2,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          contentPadding: const EdgeInsets.all(16),
          fillColor: Colors.white,
        ),
      ),
    );
    // Container(
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 15),
    //     child: TextField(
    //       decoration: InputDecoration(hintText: "6"),
    //     ),
    //   ),
    //   width: 69,
    //   height: 30,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(50),
    //     border: Border.all(
    //       color: Color(0xffc9c4c4),
    //       width: 1,
    //     ),
    //   ),
    // );
  }
}
