import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wadai_detection/screens/camera_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.camera});

  final CameraDescription camera;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
                onPressed: () {},
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
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => CameraScreen(camera: widget.camera),
                    ),
                  );
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
