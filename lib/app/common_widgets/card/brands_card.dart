import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String path;
  const BrandCard({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Image.asset(path),
    );
  }
}
