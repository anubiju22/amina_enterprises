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
    return const Scaffold(
        //backgroundColor: scaffoldBgColor,
        appBar: CommonAppBar(label: 'Order History'),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: OrderTopWidget(
                  no: '12',
                  orderNo: '#KVN/ENQ/026536',
                  type: 'Completed',
                ),
              ),
              Divider(
                thickness: 2,
                color: scaffoldBgColor,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: OrderDetailsWidget(
                  name: "SAMBAR POWDER",
                  code: "#6302",
                  qty: '30',
                ),
              ),
              Divider(
                thickness: 2,
                color: scaffoldBgColor,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: OrderInvoiceDetailsWidget(
                  invNo: 'KVN/ENQ/026536',
                  number: '9856254147',
                  place: 'Crystal Building, Malad, Rathodi, Mankavu, Calicut',
                ),
              )
            ],
          ),
        ));
  }
}
