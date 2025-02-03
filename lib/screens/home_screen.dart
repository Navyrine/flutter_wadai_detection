import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_wadai_detection/provider/image_provider.dart';
import 'package:flutter_wadai_detection/screens/result_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/welcome.png')),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Unggah wadai khas Banjar Anda untuk mengetahui nama dan masa berlakunya',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 42),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  if (Platform.isAndroid) {
                    final androidInfo = await DeviceInfoPlugin().androidInfo;

                    if (androidInfo.version.sdkInt <= 31) {
                      PermissionStatus galleryStatus =
                          await Permission.storage.request();

                      if (galleryStatus.isGranted) {
                        final classificationResult = await ref
                            .read(imageProvider.notifier)
                            .pickImage(ImageSource.gallery);

                        if (classificationResult != null && context.mounted) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder:
                                  (ctx) => ResultScreen(
                                    imagePath: classificationResult,
                                  ),
                            ),
                          );
                        }
                      } else if (galleryStatus.isDenied) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              action: SnackBarAction(
                                label: 'Setting',
                                onPressed: () {
                                  openAppSettings();
                                },
                              ),
                              content: Text('Gallery permission is required'),
                            ),
                          );
                        }
                      } else if (galleryStatus.isPermanentlyDenied) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              action: SnackBarAction(
                                label: 'Setting',
                                onPressed: () {
                                  openAppSettings();
                                },
                              ),
                              content: Text(
                                'Gallery permission is permanently denied',
                              ),
                            ),
                          );
                        }
                      }
                    } else {
                      PermissionStatus galleryStatus =
                          await Permission.photos.request();

                      if (galleryStatus.isGranted) {
                        final classificationResult = await ref
                            .read(imageProvider.notifier)
                            .pickImage(ImageSource.gallery);

                        if (classificationResult != null && context.mounted) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder:
                                  (ctx) => ResultScreen(
                                    imagePath: classificationResult,
                                  ),
                            ),
                          );
                        }
                      } else if (galleryStatus.isDenied) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              action: SnackBarAction(
                                label: 'Setting',
                                onPressed: () {
                                  openAppSettings();
                                },
                              ),
                              content: Text('Gallery permission is required'),
                            ),
                          );
                        }
                      } else if (galleryStatus.isPermanentlyDenied) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              action: SnackBarAction(
                                label: 'Setting',
                                onPressed: () {
                                  openAppSettings();
                                },
                              ),
                              content: Text(
                                'Gallery permission is permanently denied',
                              ),
                            ),
                          );
                        }
                      }
                    }
                  }
                },
                child: Column(
                  children: [
                    Icon(Icons.file_upload_outlined),
                    Text(
                      'Unggah Gambar',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 62),
              ElevatedButton(
                onPressed: () async {
                  PermissionStatus status = await Permission.camera.request();

                  if (status.isGranted) {
                    final classificationResult = await ref
                        .read(imageProvider.notifier)
                        .pickImage(ImageSource.camera);

                    if (classificationResult != null && context.mounted) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (ctx) => ProviderScope(
                                child: ResultScreen(
                                  imagePath: classificationResult,
                                ),
                              ),
                        ),
                      );
                    }
                  } else if (status.isDenied) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          action: SnackBarAction(
                            label: 'Setting',
                            onPressed: () {
                              openAppSettings();
                            },
                          ),
                          content: Text('Camera permission is required'),
                        ),
                      );
                    }
                  } else if (status.isPermanentlyDenied) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          action: SnackBarAction(
                            label: 'Setting',
                            onPressed: () {
                              openAppSettings();
                            },
                          ),
                          content: Text(
                            'Camera permission is permanently denied',
                          ),
                        ),
                      );
                    }
                  }
                },
                child: Column(
                  children: [
                    Icon(Icons.camera_alt_outlined),
                    Text(
                      'Ambil Gambar',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
