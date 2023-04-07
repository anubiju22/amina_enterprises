import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  final String text;
  const LoginText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: primaryColor,
        fontSize: 24,
        fontFamily: "Manrope",
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
