import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/applevel_services.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await AppLevelServices().onInitApp();

  runApp(
      // DevicePreview(
      //   enabled: !kReleaseMode,
      //   builder: (context) => MyApp(), // Wrap your app
      // ),
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      title: 'Amina Enterprises',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Manrope',
      ),
    );
  }
}
