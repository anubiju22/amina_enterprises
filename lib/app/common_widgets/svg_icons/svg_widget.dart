import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget svgWidget(String path,
        {double? size, BoxFit? value = BoxFit.scaleDown, ColorFilter? color}) =>
    SvgPicture.asset(
      path,
      height: size,
      width: size,
      fit: value!,
      colorFilter: color,
    );
