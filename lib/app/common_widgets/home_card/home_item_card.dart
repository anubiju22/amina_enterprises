import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCardItem extends StatelessWidget {
  final String path;
  final String label;
  const HomeCardItem({super.key, required this.path, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: SvgPicture.asset(path),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(label, style: const TextStyle(fontSize: 14))
      ],
    );
  }
}
