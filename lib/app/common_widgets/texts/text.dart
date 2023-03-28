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
      style: TextStyle(
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
      style: TextStyle(
        color: Color(0xff6c6c6c),
        fontSize: 12,
      ),
    );
  }
}
