import 'package:amina_enterprises/app/common_widgets/app_bar/home_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/home_card/home_item_card.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/home/views/camera_view.dart';
import 'package:amina_enterprises/app/modules/home/views/drawer/drawer_view.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int direction = 0;
    var sizedBox = const SizedBox(
      height: 12,
    );
    return Scaffold(
        key: controller.dashBoardController.dashboardScaffoldkey,
        drawer: const DrawerView(),
        appBar: HomeAppBar(
          () {
            controller.dashBoardController.dashboardScaffoldkey.currentState
                ?.openDrawer();
          },
        ),
        backgroundColor: scaffoldBgColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          greyText('Hi, Anshad', 14),
                          const SizedBox(
                            height: 10,
                          ),
                          blackText('Welcome', 20, fontWeight: FontWeight.w700),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.23,
                            height: MediaQuery.of(context).size.height * 0.04,
                            child: CommonButtonWidget(
                              label: 'LOGIN',
                              borderRadius: 15,
                              fontSize: 12,
                              onClick: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CameraView(
                                            camera: controller
                                                .cameras[direction])));
                              },
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.10,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFFE7E7E7)),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child:
                                Image.asset('assets/image/profile_mask.png')),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              blackText(
                'Menu',
                22,
                fontWeight: FontWeight.w700,
              ),
              sizedBox,
              GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 15.0,

                    // number of columns in the grid
                  ),
                  itemCount: controller.menuItems.length,
                  itemBuilder: (context, index) {
                    return HomeCardItem(
                      path: controller.menuItems[index].image,
                      label: controller.menuItems[index].label,
                      ontap: controller.menuItems[index].onClick,
                    );
                  }),
              const SizedBox(
                height: 20,
              ),
              blackText('Categories', 22, fontWeight: FontWeight.w700),
              const SizedBox(
                height: 20,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCategories(
                    path: 'assets/svg/home_footwear.svg',
                    label: 'Footwears',
                    color:
                        const ColorFilter.mode(homeFootColor, BlendMode.srcIn),
                    onClick: () {
                      Get.toNamed(Routes.FOOTWEARS);
                    },
                  ),
                  HomeCategories(
                    path: 'assets/svg/home_bag.svg',
                    label: 'Bags',
                    color:
                        const ColorFilter.mode(homeBagColor, BlendMode.srcIn),
                    onClick: () {},
                  ),
                  HomeCategories(
                    path: 'assets/svg/home_jacket.svg',
                    label: 'Apparels',
                    color:
                        const ColorFilter.mode(homeAppColor, BlendMode.srcIn),
                    onClick: () {},
                  )
                ],
              )
            ]),
          ),
        ));
  }
}

 // SizedBox(
              //   width: Get.width * 0.9,
              //   child: Wrap(
              //     spacing: 10,
              //     runSpacing: 10,
              //     children: [
              //       HomeCardItem(
              //         path: 'assets/svg/home_user.svg',
              //         label: 'Attendance',
              //         ontap: () {
              //           Get.toNamed(Routes.ATTENDANCE_REPORT);
              //         },
              //       ),
              //       HomeCardItem(
              //         path: 'assets/svg/route.svg',
              //         label: 'My Route',
              //         ontap: () {
              //           Get.toNamed(Routes.MYROUTE);
              //         },
              //       ),
              //       HomeCardItem(
              //         path: 'assets/svg/home_shop.svg',
              //         label: 'Shops',
              //         ontap: () {
              //           Get.toNamed(Routes.SHOPS);
              //         },
              //       ),
              //       HomeCardItem(
              //         path: 'assets/svg/home_list.svg',
              //         label: 'My Visit',
              //         ontap: () {
              //           Get.toNamed(Routes.MYVISIT);
              //         },
              //       ),
              //       HomeCardItem(
              //         path: 'assets/svg/home_checklist.svg',
              //         label: 'My Order',
              //         ontap: () {
              //           Get.toNamed(Routes.ORDER_HISTORY);
              //         },
              //       ),
              //       HomeCardItem(
              //         path: 'assets/svg/home_profile.svg',
              //         label: 'Profile',
              //         ontap: () {
              //           // Get.toNamed(Routes.ProfileView);
              //         },
              //       ),
              //       HomeCardItem(
              //         path: 'assets/svg/call_center.svg',
              //         label: 'Support',
              //         ontap: () {
              //           Get.toNamed(Routes.SUPPORT);
              //         },
              //       ),
              //     ],
              //   ),
              // ),
