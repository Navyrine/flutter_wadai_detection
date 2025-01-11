import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_wadai_detection/screens/home_screen.dart';
import 'package:flutter_wadai_detection/theme.dart';

final materialTheme = MaterialTheme(const TextTheme());
final lightColorScheme = materialTheme.light().colorScheme;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: materialTheme.light().copyWith(
        scaffoldBackgroundColor: lightColorScheme.surface,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: lightColorScheme.primaryContainer,
            foregroundColor: lightColorScheme.onPrimaryContainer,
            iconColor: lightColorScheme.onPrimaryContainer,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        textTheme: TextTheme().copyWith(
          bodyLarge: TextStyle(
            fontFamily: 'Proxima Nova',
            fontWeight: FontWeight.w100,
            color: lightColorScheme.onSurface,
            fontSize: 20,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Proxima Nova',
            fontWeight: FontWeight.w300,
            color: lightColorScheme.onSurface,
            fontSize: 18,
          ),
          titleLarge: TextStyle(
            fontFamily: 'Proxima Nova',
            fontWeight: FontWeight.w600,
            color: lightColorScheme.onPrimary,
            fontSize: 24,
          ),
          titleMedium: TextStyle(
            fontFamily: 'Proxima Nova',
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: lightColorScheme.onSurface,
          ),
          labelLarge: TextStyle(
            fontFamily: 'Proxima Nova',
            fontWeight: FontWeight.w400,
            color: lightColorScheme.onSurface,
            fontSize: 18,
          ),
          labelSmall: TextStyle(
            fontFamily: 'Proxima Nova',
            fontWeight: FontWeight.w400,
            color: lightColorScheme.onPrimary,
            fontSize: 14,
          ),
        ),
        iconTheme: IconThemeData().copyWith(
          size: 16,
          color: lightColorScheme.onSurface,
        ),
      ),
      home: HomeScreen(camera: firstCamera),
    ),
  );
}
