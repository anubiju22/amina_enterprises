import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/text_fields/common_searchfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/stocks_controller.dart';

class StocksView extends GetView<StocksController> {
  const StocksView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CommonAppBar(label: "Stocks"),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: CommonSearchField(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.735,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: StockCard('assets/image/product.png',
                          'SAMBAR POWDER', '#6302', '60', () {
                        Get.toNamed(Routes.STOCK_DETAILS);
                      }),
                    );
                  })),
            ),
          )
        ]));
  }
}

class StockCard extends GetView<StocksController> {
  final String path;
  final String title;
  final String code;
  final String quantity;
  final Function onClick;
  final bool? visible;

  const StockCard(this.path, this.title, this.code, this.quantity, this.onClick, {super.key, this.visible = true}
      );
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick == null
          ? null
          : () {
              onClick();
            },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 20,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(path),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        blackText(title, 14, fontWeight: FontWeight.w600),
                        greyText(code, 12),
                        blackText('Total Quantity : $quantity', 12)
                      ],
                    )
                  ],
                ),
                Visibility(
                    visible: visible!,
                    child: svgWidget('assets/svg/right_arrow.svg'))
              ]),
        ),
      ),
    );
  }
}
