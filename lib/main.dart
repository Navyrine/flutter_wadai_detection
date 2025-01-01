import 'package:flutter/material.dart';
import 'package:flutter_wadai_detection/screens/home_screen.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 239, 42, 75),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        scaffoldBackgroundColor: kColorScheme.surface,
        buttonTheme: ButtonThemeData().copyWith(
          buttonColor: kColorScheme.primaryContainer,
        ),
        iconTheme: IconThemeData().copyWith(color: kColorScheme.onSurface),
      ),
      home: const HomeScreen(),
    ),
  );
}
