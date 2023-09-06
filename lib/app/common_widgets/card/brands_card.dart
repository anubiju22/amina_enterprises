import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String path;
  const BrandCard({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.30,
      //  height: MediaQuery.of(context).size.width * 0.15,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Center(child: Image.asset(path)),
      ),
    );
  }
}
