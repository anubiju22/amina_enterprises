import 'package:amina_enterprises/app/common_widgets/app_bar/home_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/home_card/home_item_card.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var sizedBox = const SizedBox(
      height: 12,
    );
    return Scaffold(
        appBar: const HomeAppBar(),
        backgroundColor: scaffoldBgColor,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        greyText('Hi, Anshad', 14),
                        sizedBox,
                        blackText('Welcome', 20, fontWeight: FontWeight.w700),
                        sizedBox,
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.20,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: CommonButtonWidget(
                            label: 'LOGIN',
                            fontSize: 12,
                            onClick: () {},
                          ),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: const Color(0xFFE7E7E7),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset('assets/image/profile_mask.png')),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            blackText('Menu', 22, fontWeight: FontWeight.w500),
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // number of columns in the grid
                ),
                itemCount: controller.items.length,
                itemBuilder: (context, index) {
                  return HomeCardItem(
                      path: controller.images[index],
                      label: controller.items[index]);
                })
          ]),
        ));
  }
}
