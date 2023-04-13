import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/svg_icons/svg_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CommonAppBar(
          label: 'Profile',
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: scaffoldBgColor,
          ),
          child: ListView(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Center(child: Image.asset("assets/image/profilecircle.png")),
                  // const DealerImgWidget(),
                  const SizedBox(
                    height: 5,
                  ),
                  blackText("Anshad", 16, fontWeight: FontWeight.w600),
                  const SizedBox(
                    height: 5,
                  ),
                  blackText("C-KL-000001", 14, fontWeight: FontWeight.w500),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
              const EmployeeBottomWidget(),
            ],
          ),
        ));
  }
}

class EmployeeBottomWidget extends StatelessWidget {
  const EmployeeBottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spacer = SizedBox(
      height: MediaQuery.of(context).size.height * .015,
    );
    return Container(
      //  height: MediaQuery.of(context).size.height * .7,
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: Colors.white),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Header
                spacer,
                blackText("Personal Details", 18, fontWeight: FontWeight.w800),
                spacer,
                Row(
                  children: [
                    svgWidget("assets/svg/home_profile.svg",
                        size: 20,
                        color: const ColorFilter.mode(
                            Colors.grey, BlendMode.srcIn)),
                    const SizedBox(
                      width: 10,
                    ),
                    greyText("Anshad", 16, fontWeight: FontWeight.w500),
                    const Spacer(),
                  ],
                ),
                // Email
                spacer,
                Row(
                  children: [
                    svgWidget('assets/svg/Call.svg', size: 15),
                    const SizedBox(
                      width: 10,
                    ),
                    greyText("+91 8563524047", 16, fontWeight: FontWeight.w500),
                    const Spacer(),

                    // const Spacer(),
                    // IconWithOnTapWidget(
                    //   icon: "assets/svg_icon/edit.svg",
                    //   onTap: () {
                    //     //controller.logout();
                    //   },
                    // ),
                  ],
                ),

                spacer,
                Row(
                  children: [
                    svgWidget('assets/svg/email.svg', size: 15),
                    const SizedBox(
                      width: 10,
                    ),
                    greyText("anshad000@gmail.com", 16,
                        fontWeight: FontWeight.w500),
                    const Spacer(),
                  ],
                ),
                spacer,
                // Divider with color
                devider(context),
                // Profile settings
                spacer,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container devider(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .005,
      color: Colors.grey.withOpacity(.2),
    );
  }
}
