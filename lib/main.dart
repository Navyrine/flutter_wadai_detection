import 'package:flutter/material.dart';
import 'package:flutter_wadai_detection/screens/home_screen.dart';
import 'package:flutter_wadai_detection/theme.dart';

final materialTheme = MaterialTheme(const TextTheme());
final lightColorScheme = materialTheme.light().colorScheme;

void main() {
  runApp(
    MaterialApp(
      theme: materialTheme.light().copyWith(
        scaffoldBackgroundColor: lightColorScheme.surface,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: lightColorScheme.primaryContainer,
            foregroundColor: lightColorScheme.onPrimaryContainer,
            iconColor: lightColorScheme.onPrimaryContainer,
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
      home: const HomeScreen(),
    ),
  );
}
