import 'package:amina_enterprises/app/common_widgets/app_bar/home_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
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
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
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
                        const BlackText(text: 'Welcome'),
                        sizedBox,
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.20,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: CommonButtonWidget(
                            label: 'LOGIN',
                            onClick: () {},
                          ),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: const Color(0xFFE7E7E7),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset('assets/image/profile_mask.png')),
                    )
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
