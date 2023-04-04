import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:flutter/material.dart';

class SupportCardWidget extends StatelessWidget {
  final String path;
  final String label;
  final String mob;
  final List<String> items;
  const SupportCardWidget(
      {super.key,
      required this.path,
      required this.label,
      required this.mob,
      required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              // Image.asset(path),
              svgWidget(path),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  blackText(label, 18, fontWeight: FontWeight.bold),
                  Row(
                    children: [
                      greyText('Mobile No: ', 14),
                      blackText(
                        mob,
                        14,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/image/call.png')
                    ],
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.15, top: 10),
            child: ListView.builder(
                itemCount: items.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListText(
                    text: items[index],
                  );
                }),
          )
        ],
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
