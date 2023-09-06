import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class HomeCardItem extends StatelessWidget {
  final String path;
  final String label;
  final Function? ontap;
  const HomeCardItem(
      {super.key, required this.path, required this.label, this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap!();
      },
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: homeMenuColor),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 18),
                  child: svgWidget(
                    path,
                    color: redColor,
                    blendMode: BlendMode.srcIn,
                  ),
                )),
            const SizedBox(
              height: 5,
            ),
            blackText(label, 13,
                textAlign: TextAlign.center, fontWeight: FontWeight.w500)
          ],
        ),
      ),
    );
  }
}

// class HomeCategories extends StatelessWidget {
//   final String path;
//   final String label;
//   final Color color;
//   final Function? onClick;

//   const HomeCategories({
//     super.key,
//     required this.path,
//     required this.label,
//     required this.color,
//     this.onClick,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         onClick!();
//       },
//       child: Column(
//         // mainAxisAlignment: MainAxisAlignment.start,
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(16), color: Colors.white),
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//                 child: svgWidget(path, color: color),
//               )),
//           const SizedBox(
//             height: 6,
//           ),
//           blackText(label, 14, fontWeight: FontWeight.w500)
//         ],
//       ),
//     );
//   }
// }

class HomeCategories extends StatelessWidget {
  final String path;
  final String label;
  // final Color color;
  final Function? onClick;

  const HomeCategories({
    super.key,
    required this.path,
    required this.label,
    //required this.color,
    this.onClick,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick!();
      },
      child: Container(
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1), // rgba(0, 0, 0, 0.10)
              blurRadius: 20,
              offset: Offset(0, 4),
            ),
          ], borderRadius: BorderRadius.circular(16), color: Colors.white),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 28, top: 19, bottom: 19),
            child: Row(
              children: [
                // svgWidget(path),
                Image.asset(
                  path,
                  width: MediaQuery.of(context).size.width * 0.13,
                  height: MediaQuery.of(context).size.width * 0.12,
                ),
                const SizedBox(
                  width: 5,
                ),
                blackText(label, 14, fontWeight: FontWeight.w500)
              ],
            ),
          )),
    );
  }
}
