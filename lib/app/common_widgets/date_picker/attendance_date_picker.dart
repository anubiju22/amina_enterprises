import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class AttendanceDatePicker extends StatelessWidget {
  final String date;
  final Function? changeDate;
  final Function increment;
  final Function decrement;
  const AttendanceDatePicker(
      {super.key,
      required this.date,
      this.changeDate,
      required this.increment,
      required this.decrement});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          onPressed: () {
            decrement();
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: dateArrowColor,
        ),
        TextButton(
          onPressed: changeDate == null
              ? null
              : () {
                  changeDate!();
                },
          child: Row(
            children: [
              const Icon(Icons.calendar_today, size: 17, color: redColor),
              const SizedBox(
                width: 5,
              ),
              Text(
                date,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            increment();
          },
          icon: const Icon(Icons.arrow_forward_ios),
          color: dateArrowColor,
        )
      ]),
    );
  }
}
