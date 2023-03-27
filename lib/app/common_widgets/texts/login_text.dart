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
      style: TextStyle(
        color: Color(0xff033eb2),
        fontSize: 24,
        fontFamily: "Manrope",
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
