import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

Widget orderButtonFunction(String type) {
  switch (type) {
    case "Visited":
      return statusButtonWidget(type, const Color(0xFFE4FFE0), Colors.green);

    case "Pending":
      return statusButtonWidget(
          type, const Color(0xFFFFD5B6), const Color(0xFFED893E));

    case "Viewed":
      return statusButtonWidget(
          type, const Color(0xFFFFECAA), const Color(0xFFAB8D23));

    case "Processed":
      return statusButtonWidget(
          type, const Color(0xFFE9EAFF), const Color(0xFF3F46EF));

    case "Completed":
      return statusButtonWidget(
          type, const Color(0xFFFEA500), const Color(0xFFFFFFFF));
    case "Partially Completed":
      return statusButtonWidget(
          type, const Color(0xFFE5F9FF), const Color(0xFF4C7785));
    case "Cancelled":
      return statusButtonWidget(
          type, const Color(0xFFFFE1E2), const Color(0xFFE75860));

    case "Processing":
      return statusButtonWidget(
          type, const Color(0xFF3585DB).withOpacity(0.1), redColor);

    default:
      return const SizedBox();
  }
}

Container statusButtonWidget(
  String type,
  Color color,
  Color textColor,
) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 4.5, horizontal: 20),
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(31)),
    child: Center(
      child: Text(
        type,
        style: TextStyle(
            color: textColor, fontWeight: FontWeight.w500, fontSize: 14),
      ),
    ),
  );
}
