import 'package:amina_enterprises/app/modules/home/controllers/retailer_home_controller.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RetailerHome extends GetView<RetailerHomeController> {
  final sliderController = Get.put(RetailerHomeController());
  RetailerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Column(children: [
          CarouselSlider.builder(
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(controller.imagesList[index]))),
                child: const Center(child: Text('')),
              );
            },
            itemCount: controller.imagesList.length,
            options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  controller.setCurrentIndex(index);
                }),
            carouselController: Get.put(CarouselController()),
          ),
          GetBuilder<RetailerHomeController>(
            builder: (controller) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    controller.imagesList.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            width: 8.0,
                            height: 8.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: controller.currentIndex.value == index
                                    ? redColor
                                    : redColor.withOpacity(0.1)),
                          ),
                        ))),
          )
        ])
        // HomeSliderWidget(
        //   items: controller.imagesList,
        // ),
      ],
    ));
  }
}
