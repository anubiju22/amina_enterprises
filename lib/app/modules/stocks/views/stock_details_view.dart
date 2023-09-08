import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/stocks/views/stocks_view.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StockDetailsView extends GetView {
  const StockDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CommonAppBar(label: "Stocks"),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              StockCard('assets/image/product.png', 'SAMBAR POWDER', '#6302',
                  '60', () {}),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                child: Center(
                  child: DataTable(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: popupLineColor,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      // border: TableBorder.all(
                      //     color: popupLineColor,
                      //     borderRadius: BorderRadius.circular(16)),
                      columns: [
                        DataColumn(
                            label: blackText('Quantity', 14,
                                fontWeight: FontWeight.w500)),
                        DataColumn(label: _verticaldivider),
                        DataColumn(
                            label: blackText('Date of Expiry', 14,
                                fontWeight: FontWeight.w500))
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(blackText('30', 14)),
                          const DataCell(Text('')),
                          DataCell(Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              blackText('04/10/23', 14),
                              svgWidget('assets/svg/right_arrow.svg')
                            ],
                          )),
                        ])
                      ]),
                ),
              )
            ],
          ),
        ));
  }
}

Widget _verticaldivider = const VerticalDivider(
  color: popupLineColor,
  thickness: 1,
);
