import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_wadai_detection/screens/result_screen.dart';
import 'package:image/image.dart' as img;

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key, required this.camera});

  final CameraDescription camera;

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _cameraController;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _cameraController = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _cameraController.initialize().then((_) {
      _cameraController.lockCaptureOrientation(
        DeviceOrientation.landscapeRight,
      );
    });
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  Future<String> _processImage(String imagePath, int sensorOrientation) async {
    final imageFile = File(imagePath);
    final imageBytes = await imageFile.readAsBytes();
    final image = img.decodeImage(imageBytes);

    if (image == null) {
      throw Exception('Failed to decode image');
    }

    final rotatedImage = img.copyRotate(image, angle: -sensorOrientation);

    final rotatedImageBytes = img.encodeJpg(rotatedImage);
    final newImagePath =
        '${imageFile.parent.path}/processed_${imageFile.uri.pathSegments.last}';
    final newImageFile = File(newImagePath);
    await newImageFile.writeAsBytes(rotatedImageBytes);

    return newImagePath;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Stack(
              children: [
                Positioned.fill(child: CameraPreview(_cameraController)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () async {
                        try {
                          await _initializeControllerFuture;
                          final image = await _cameraController.takePicture();
                          final sensorOrientation =
                              widget.camera.sensorOrientation;
                          final processImagePath = await _processImage(
                            image.path,
                            sensorOrientation,
                          );

                          if (!context.mounted) {
                            return;
                          }

                          await Navigator.of(context).push(
                            MaterialPageRoute(
                              builder:
                                  (ctx) =>
                                      ResultScreen(imagePath: processImagePath),
                            ),
                          );
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
