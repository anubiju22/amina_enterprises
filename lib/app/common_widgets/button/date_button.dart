import 'package:flutter/material.dart';

class DateButton extends StatelessWidget {
  final Function? onPressed;
  final String label;
  // final IconData? icons;
  final Function? ontapp;
  const DateButton({
    Key? key,
    required this.size,
    required this.ontapp,
    // required this.icons,
    this.onPressed,
    required this.label,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed == null ? () {} : () => onPressed!(),
      child: Container(
        width: size.width * .45,
        height: 47,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(255, 255, 255, 1),
          border: Border.all(
            color: const Color.fromRGBO(215, 215, 215, 1),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                ontapp!();
              },
              icon: const Icon(
                Icons.calendar_today,
                size: 20,
              ),
            ),
            Text(label),
            const Icon(Icons.keyboard_arrow_right)
          ],
        ),
      ),
    );
  }
}
