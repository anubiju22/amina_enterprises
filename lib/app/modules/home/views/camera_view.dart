import 'dart:io';

import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraView extends StatefulWidget {
  final CameraDescription camera;
  const CameraView({super.key, required this.camera});

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  late CameraController cameraController;
  late Future<void> initializeValue;
  String imagePath = "";

  @override
  void initState() {
    super.initState();

    cameraController = CameraController(widget.camera, ResolutionPreset.high,
        enableAudio: false);
    initializeValue = cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            print('Access is denied');
            break;
          default:
            print(e.description);
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (cameraController.value.isInitialized) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
                alignment: AlignmentDirectional.topCenter,
                fit: StackFit.loose,
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.75,
                      child: CameraPreview(cameraController)),
                  if (imagePath != "")
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.75,
                      child: Image.file(
                        File(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: const Icon(Icons.close),
                  )
                ]),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                svgWidget('assets/svg/location.svg'),
                const SizedBox(
                  width: 2,
                ),
                const Text(
                  'Feroke, Calicut, Kerala',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                  onTap: () {
                    cameraController.takePicture().then(
                      (value) {
                        setState(() {
                          imagePath = value.path;
                        });
                      },
                    );
                  },
                  child: camButton(Icons.camera_alt_outlined)),
            ),
            //  CommonButtonWidget(label: 'Submit', onClick: () {})
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget camButton(IconData icon) {
    return Container(
      margin: const EdgeInsets.only(left: 28, bottom: 28),
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: primaryColor,
          boxShadow: [
            BoxShadow(color: Colors.white, offset: Offset(2, 2), blurRadius: 12)
          ]),
      child: Center(
        child: Icon(
          icon,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
