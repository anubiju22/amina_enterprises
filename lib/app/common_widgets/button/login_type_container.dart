import 'package:flutter/material.dart';

import '../svg_icons/svg_widget.dart';

class LoginTypeContainer extends StatelessWidget {
  final String label;
  final String icon;
  final Color color;
  final VoidCallback buttonClick;

  const LoginTypeContainer(
      {Key? key,
      required this.label,
      required this.icon,
      required this.color,
      required this.buttonClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        buttonClick();
      }),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height * .067,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                svgWidget(icon,
                    size: 20, blendMode: BlendMode.srcIn, color: Colors.white),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    fontFamily: "Manrope",
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20,
            ),
            // svgWidget('assets/svg_icon/angle-right.svg')
          ],
        ),
      ),
    );
  }
}
