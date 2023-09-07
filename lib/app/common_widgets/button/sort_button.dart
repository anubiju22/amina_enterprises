import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class CommonButtonWithIcon extends StatelessWidget {
  final String label;
  final Color? color;
  final double? fontSize;
  final double? borderRadius;
  final VoidCallback onClick;
  final bool? isLoading;
  final Widget icon;

  const CommonButtonWithIcon(
      {super.key,
      required this.label,
      required this.onClick,
      this.fontSize,
      this.isLoading,
      this.borderRadius = 12,
      this.color,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Container(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height * .09,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius!),
              // color: color ?? AppColors().primaryColor
              gradient: primaryColor),
          child: isLoading == true
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icon,
                      // Icon(

                      //   color: Colors.white,
                      // ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(label,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                            fontFamily: "Manrope",
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                  //  Text(
                  //   label,
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: fontSize,
                  //     fontFamily: "Manrope",
                  //     fontWeight: FontWeight.w700,
                  //   ),
                  // ),
                )),
    );
  }
}
