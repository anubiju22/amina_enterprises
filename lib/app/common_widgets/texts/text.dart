import 'package:flutter/material.dart';

class BlackText extends StatelessWidget {
  final String text;
  const BlackText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: "Manrope",
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class GreyText extends StatelessWidget {
  final String text;
  const GreyText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xff6c6c6c),
        fontSize: 12,
      ),
    );
  }
}

Text greyText(String label, double fontSize,
    {TextAlign? textAlign = TextAlign.center,
    FontWeight? fontWeight = FontWeight.w400}) {
  return Text(
    label,
    textAlign: textAlign,
    style: TextStyle(
        color: const Color(0xFF7B7B7B),
        fontSize: fontSize,
        fontWeight: fontWeight),
  );
}
