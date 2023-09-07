import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../masala/controllers/masala_controller.dart';

class SortBottomSheetWidget extends GetView<MasalaController> {
  const SortBottomSheetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizedBox1 = SizedBox(
      height: 15,
    );
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Sort By"),
            const Divider(color: Colors.black),
            sizedBox1,
            text(
              'Price -- Low to High',
              () {},
            ),
            text(
              'Price -- High to Low',
              () {},
            ),
            text(
              'Newest First',
              () {},
            ),
          ],
        ),
      ),
    );
  }

  TextButton text(String text, Function onTap) => TextButton(
        onPressed: () {
          onTap();
          Get.back();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(color: Colors.black, fontSize: 15),
            ),
            // Checkbox(
            //   value: false,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10)),
            //   onChanged: null,
            //   tristate: true,
            // )
          ],
        ),
      );
}
