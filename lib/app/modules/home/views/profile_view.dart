import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

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
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [svgWidget("assets/svg/edit.svg")],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ProfileImgWidget(),
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
                const EmployeeBottomWidget(
                  name: 'Anshad',
                  phone: "+91 8563524047",
                  email: "anshad000@gmail.com",
                ),
              ],
            )));
  }
}

class ProfileImgWidget extends StatelessWidget {
  const ProfileImgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(fit: StackFit.loose, clipBehavior: Clip.none, children: [
        Image.asset("assets/image/profilecircle.png"),
        Positioned(
            bottom: 4, right: -4, child: svgWidget('assets/svg/cam_frame.svg'))
      ]),
    );
  }
}

class EmployeeBottomWidget extends StatelessWidget {
  final String name, phone, email;
  final bool? visibility;

  const EmployeeBottomWidget({
    Key? key,
    required this.name,
    required this.phone,
    required this.email,
    this.visibility = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spacer = SizedBox(
      height: MediaQuery.of(context).size.height * .015,
    );
    return Container(
        height: MediaQuery.of(context).size.height * .7,
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
            color: Colors.white),
        child: AnimationConfiguration.staggeredList(
          position: 0,
          child: SlideAnimation(
            duration: const Duration(milliseconds: 350),
            horizontalOffset: 50.0,
            // verticalOffset: 50.0,
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Header
                      spacer,
                      blackText("Personal Details", 18,
                          fontWeight: FontWeight.w800),
                      spacer,
                      Row(
                        children: [
                          svgWidget("assets/svg/home_profile.svg",
                              size: 20, color: Colors.grey),
                          const SizedBox(
                            width: 10,
                          ),
                          greyText(name, 16, fontWeight: FontWeight.w500),
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
                          greyText(phone, 16, fontWeight: FontWeight.w500),
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
                          greyText(email, 16, fontWeight: FontWeight.w500),
                          const Spacer(),
                        ],
                      ),
                      spacer,
                      // Divider with color
                      devider(context),
                      // Profile settings
                      spacer,
                      Visibility(
                          visible: visibility!,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                blackText("Available Brands", 18,
                                    fontWeight: FontWeight.w600),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: const Color(0xff868686),
                                        width: 1,
                                      ),
                                      color: Colors.white),
                                  child: Row(
                                    children: [
                                      svgWidget("assets/svg/edit.svg",
                                          size: 10),
                                      greyText("Edit Brands", 12,
                                          fontWeight: FontWeight.w400)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Container devider(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .005,
      color: Colors.grey.withOpacity(.2),
    );
  }
}
