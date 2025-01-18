import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_wadai_detection/provider/image_provider.dart';
import 'package:flutter_wadai_detection/screens/result_screen.dart';
import 'package:image_picker/image_picker.dart';

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
                  final croppedImage = await ref
                      .read(imageProvider.notifier)
                      .pickImage(ImageSource.gallery);

                  if (croppedImage != null && context.mounted) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => ResultScreen(imagePath: croppedImage),
                      ),
                    );
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
                  final croppedImage = await ref
                      .read(imageProvider.notifier)
                      .pickImage(ImageSource.camera);

                  if (croppedImage != null && context.mounted) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => ResultScreen(imagePath: croppedImage),
                      ),
                    );
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
