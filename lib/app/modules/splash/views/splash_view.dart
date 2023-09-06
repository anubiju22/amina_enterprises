import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
        body: AnimationConfiguration.staggeredList(
      position: 0,
      child: FadeInAnimation(
        duration: const Duration(milliseconds: 800),
        // verticalOffset: 50.0,
        child: Image.asset(
          'assets/image/splash_kvn.png',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    ));
  }
}
