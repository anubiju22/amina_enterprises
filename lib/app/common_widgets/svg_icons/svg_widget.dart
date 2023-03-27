import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget svgWidget(String path, {double? size}) =>
    SvgPicture.asset(path, height: size, width: size);
