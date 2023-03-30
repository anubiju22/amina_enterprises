import 'package:amina_enterprises/app/common_widgets/app_bar/home_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/home_card/home_item_card.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/home/views/camera_view.dart';
import 'package:amina_enterprises/app/modules/home/views/drawer/drawer_view.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:camera/camera.dart';
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
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Card(
                elevation: 4,
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
                          sizedBox,
                          blackText('Welcome', 20, fontWeight: FontWeight.w700),
                          sizedBox,
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.20,
                            height: MediaQuery.of(context).size.height * 0.04,
                            child: CommonButtonWidget(
                              label: 'LOGIN',
                              borderRadius: 15,
                              fontSize: 12,
                              onClick: () {
                                Navigator.push(context,MaterialPageRoute(
                                    builder: (context) => CameraView(camera: controller.cameras[direction])));
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
                height: 25,
              ),
              blackText('Menu', 22, fontWeight: FontWeight.w500),
              sizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCardItem(
                    path: 'assets/svg/home_user.svg',
                    label: 'Attendance',
                    ontap: () {
                      Get.toNamed(Routes.ATTENDANCE_REPORT);
                    },
                  ),
                  HomeCardItem(
                    path: 'assets/svg/route.svg',
                    label: 'My Route',
                    ontap: () {
                      Get.toNamed(Routes.MYROUTE);
                    },
                  ),
                  HomeCardItem(
                    path: 'assets/svg/home_shop.svg',
                    label: 'Shops',
                    ontap: () {
                      Get.toNamed(Routes.SHOPS);
                    },
                  ),
                  HomeCardItem(
                    path: 'assets/svg/home_list.svg',
                    label: 'My Visit',
                    ontap: () {
                      Get.toNamed(Routes.MYVISIT);
                    },
                  ),
                ],
              ),
              sizedBox,
              Row(
                children: [
                  Wrap(
                    spacing: MediaQuery.of(context).size.width * 0.05,
                    children: [
                      HomeCardItem(
                        path: 'assets/svg/home_checklist.svg',
                        label: 'My Order',
                        ontap: () {},
                      ),
                      HomeCardItem(
                        path: 'assets/svg/home_profile.svg',
                        label: 'Profile',
                        ontap: () {},
                      ),
                      HomeCardItem(
                        path: 'assets/svg/call_center.svg',
                        label: 'Support',
                        ontap: () {},
                      ),
                    ],
                  )
                ],
              ),
              // GridView.builder(
              //     padding: EdgeInsets.zero,
              //     shrinkWrap: true,
              //     scrollDirection: Axis.vertical,
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 4, mainAxisSpacing: 20.0

              //         // number of columns in the grid
              //         ),
              //     itemCount: controller.items.length,
              //     itemBuilder: (context, index) {
              //       return HomeCardItem(
              //           path: controller.images[index],
              //           label: controller.items[index],
              //           ontap: ,);
              //     }),
              const SizedBox(
                height: 30,
              ),
              blackText('Categories', 22, fontWeight: FontWeight.w500),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeCategories(
                    path: 'assets/svg/home_footwear.svg',
                    label: 'Footwears',
                    color: homeFootColor,
                    onClick: () {
                      Get.toNamed(Routes.FOOTWEARS);
                    },
                  ),
                  HomeCategories(
                    path: 'assets/svg/home_bag.svg',
                    label: 'Bag',
                    color: homeBagColor,
                    onClick: () {},
                  ),
                  HomeCategories(
                    path: 'assets/svg/home_jacket.svg',
                    label: 'Apparels',
                    color: homeAppColor,
                    onClick: () {},
                  )
                ],
              )
            ]),
          ),
        ));
  }
}
