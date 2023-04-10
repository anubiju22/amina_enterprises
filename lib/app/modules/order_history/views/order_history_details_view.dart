import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/order_history_widgets/order_details_card.dart';
import 'package:amina_enterprises/app/common_widgets/order_history_widgets/order_invoice_card.dart';
import 'package:amina_enterprises/app/common_widgets/order_history_widgets/order_top_card.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OrderHistoryDetailsView extends GetView {
  const OrderHistoryDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: scaffoldBgColor,
        appBar: const CommonAppBar(label: 'Order History'),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: OrderTopWidget(
                  no: '12',
                  orderNo: 'PAR/ENQ/026536',
                  type: 'Completed',
                ),
              ),
              Divider(
                thickness: 5,
                color: scaffoldBgColor,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: OrderDetailsWidget(
                  artNo: 'GP4300',
                  artType: 'Gents Covering',
                  type: 'CARTON',
                  mrp: '₹ 289',
                ),
              ),
              Divider(
                thickness: 5,
                color: scaffoldBgColor,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: OrderInvoiceDetailsWidget(
                  invNo: 'PAR/ENQ/026536',
                  number: '9856254147',
                  place: 'Crystal Building, Malad, Rathodi, Mankavu, Calicut',
                ),
              )
            ],
          ),
        ));
  }
}
