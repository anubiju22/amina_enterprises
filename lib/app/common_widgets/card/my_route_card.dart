import 'package:amina_enterprises/app/common_widgets/card/status_card.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class MyRouteCard extends StatelessWidget {
  final String shopname;
  final String location;
  final String number;
  const MyRouteCard({
    super.key,
    required this.shopname,
    required this.location,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlackText(
            text: shopname,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              svgWidget('assets/svg/location.svg'),
              SizedBox(
                width: 5,
              ),
              GreyText(
                text: location,
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              svgWidget('assets/svg/Call.svg', size: 15),
              SizedBox(
                width: 5,
              ),
              GreyText(
                text: number,
              ),
              SizedBox(
                width: 40,
              ),
              svgWidget('assets/svg/pin_drop.svg',
                  size: 20,
                  color: ColorFilter.mode(primaryColor, BlendMode.srcIn)),
              TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Google Map",
                    style: TextStyle(color: primaryColor, fontSize: 12),
                  )),
              SizedBox(
                width: 50,
              ),
              orderButtonFunction('Pending')
            ],
          ),
        ],
      ),
    );
  }
}
