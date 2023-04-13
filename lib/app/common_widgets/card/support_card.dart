import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:amina_enterprises/constraints/phone_call_utils.dart';
import 'package:flutter/material.dart';

class SupportCardWidget extends StatelessWidget {
  // final String path;
  final String label;
  final String mob;
  final String email;
  final bool? visible;
  final Function? onMailPress;
  final Function? onCall;
  final List<String> items;
  const SupportCardWidget(
      {super.key,
      //   required this.path,
      required this.label,
      required this.mob,
      required this.items,
      this.onMailPress,
      required this.email,
      this.visible = true,
      this.onCall});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blackText(label, 18, fontWeight: FontWeight.bold),
                const SizedBox(
                  height: 5,
                ),
                Visibility(
                  visible: visible!,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          greyText('Mobile No: ', 14),
                          blackText(
                            mob,
                            14,
                          ),
                        ],
                      ),
                      InkWell(
                          onTap: () {
                            // onCall!();
                            PhoneCallUtils.callPhoneNumber(mob);
                          },
                          child: svgWidget(
                            'assets/svg/mob_call.svg',
                          ))
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    onMailPress!();
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child:
                      Text(email, style: const TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            // Padding(
            //   padding: EdgeInsets.only(
            //       left: MediaQuery.of(context).size.width * 0.15, top: 10),
            //   child: ListView.builder(
            //       itemCount: items.length,
            //       shrinkWrap: true,
            //       physics: const ScrollPhysics(),
            //       itemBuilder: (context, index) {
            //         return ListText(
            //           text: items[index],
            //         );
            //       }),
            // )
          ],
        ),
      ),
    );
  }
}

class ListText extends StatelessWidget {
  final String text;

  const ListText({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        children: [
          //   svgWidget('assets/svg/arrow_bullet.svg'),
          Image.asset('assets/image/arrow_bullet.png'),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF707070),
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }
}
