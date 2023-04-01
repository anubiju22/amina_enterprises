import 'dart:io';

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
  late String imagePath;

  @override
  void initState() {
    super.initState();
    imagePath = '';

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
      return AspectRatio(
        aspectRatio: cameraController.value.aspectRatio,
        child: Stack(children: [
          FutureBuilder(
            future: initializeValue,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CameraPreview(cameraController);
              }
              return const SizedBox();
            },
          ),
          GestureDetector(
              onTap: () {
                cameraController.takePicture().then(
                  (value) {
                    setState(() {
                      imagePath = value.path;
                    });
                  },
                );
              },
              child:
                  camButton(Alignment.bottomCenter, Icons.camera_alt_outlined)),
          if (imagePath != null)
            Positioned.fill(
              child: Image.file(
                File(imagePath),
                fit: BoxFit.cover,
              ),
            )
        ]),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget camButton(Alignment alignment, IconData icon) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.only(left: 28, bottom: 28),
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(2, 2), blurRadius: 10)
            ]),
        child: Center(
          child: Icon(icon),
        ),
      ),
    );
  }
}
