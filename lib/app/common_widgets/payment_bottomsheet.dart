import 'package:amina_enterprises/app/common_widgets/home_card/home_item_card.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentBottomSheet extends StatelessWidget {
  const PaymentBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.width * 0.66,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            blackText('Payments', 20, fontWeight: FontWeight.w600),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xFFDEDEDE),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeCardItem(
                  path: 'assets/svg/pay_add.svg',
                  label: 'Add',
                  ontap: () {
                    Get.toNamed(Routes.SHOPS);
                  },
                ),
                HomeCardItem(
                  path: 'assets/svg/pay_view.svg',
                  label: 'View',
                  ontap: () {
                    Get.toNamed(Routes.PAYMENTHISTORY);
                  },
                ),
                HomeCardItem(
                  path: 'assets/svg/pending.svg',
                  label: 'Pending',
                  ontap: () {
                    Get.toNamed(Routes.PENDING_COLLECTION);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
