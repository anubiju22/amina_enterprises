import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

Container divider() {
  return Container(
    height: 0.5,
    color: drawerLineColor,
    width: double.maxFinite,
  );
}

Container divider1() {
  return Container(
    height: 1,
    color: popupLineColor,
    width: double.infinity,
  );
}

Widget rectangleRedBg(Widget childWidget) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: homeMenuColor.withOpacity(0.5)),
    child: childWidget,
  );
}
