import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4288938011),
      surfaceTint: Color(4290707490),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4293074738),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4289344566),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294935680),
      onSecondaryContainer: Color(4282712070),
      tertiary: Color(4286136832),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4289618176),
      onTertiaryContainer: Color(4294967295),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965495),
      onSurface: Color(4280817430),
      onSurfaceVariant: Color(4284301118),
      outline: Color(4287721324),
      outlineVariant: Color(4293311930),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4282329898),
      inversePrimary: Color(4294947759),
      primaryFixed: Color(4294957783),
      onPrimaryFixed: Color(4282449925),
      primaryFixedDim: Color(4294947759),
      onPrimaryFixedVariant: Color(4287823895),
      secondaryFixed: Color(4294957783),
      onSecondaryFixed: Color(4282449925),
      secondaryFixedDim: Color(4294947759),
      onSecondaryFixedVariant: Color(4287175713),
      tertiaryFixed: Color(4294958273),
      onTertiaryFixed: Color(4281210112),
      tertiaryFixedDim: Color(4294948729),
      onTertiaryFixedVariant: Color(4285282816),
      surfaceDim: Color(4294169552),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963439),
      surfaceContainer: Color(4294961639),
      surfaceContainerHigh: Color(4294959583),
      surfaceContainerHighest: Color(4294761432),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4287299606),
      surfaceTint: Color(4290707490),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4293074738),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4286781213),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291250761),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284888832),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4289618176),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965495),
      onSurface: Color(4280817430),
      onSurfaceVariant: Color(4283972410),
      outline: Color(4286011221),
      outlineVariant: Color(4287984240),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4282329898),
      inversePrimary: Color(4294947759),
      primaryFixed: Color(4293074738),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4290445345),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4291250761),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4289081907),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4289618176),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4287319040),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4294169552),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963439),
      surfaceContainer: Color(4294961639),
      surfaceContainerHigh: Color(4294959583),
      surfaceContainerHighest: Color(4294761432),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4283236359),
      surfaceTint: Color(4290707490),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4287299606),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283236359),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4286781213),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281801472),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284888832),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965495),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281736476),
      outline: Color(4283972410),
      outlineVariant: Color(4283972410),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4282329898),
      inversePrimary: Color(4294961125),
      primaryFixed: Color(4287299606),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4284547084),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4286781213),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4284547084),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284888832),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282852352),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4294169552),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963439),
      surfaceContainer: Color(4294961639),
      surfaceContainerHigh: Color(4294959583),
      surfaceContainerHighest: Color(4294761432),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294947759),
      surfaceTint: Color(4294947759),
      onPrimary: Color(4285005837),
      primaryContainer: Color(4293074738),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4294947759),
      onSecondary: Color(4285005837),
      secondaryContainer: Color(4286518299),
      onSecondaryContainer: Color(4294953156),
      tertiary: Color(4294948729),
      onTertiary: Color(4283180800),
      tertiaryContainer: Color(4289552384),
      onTertiaryContainer: Color(4294967295),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4280225550),
      onSurface: Color(4294761432),
      onSurfaceVariant: Color(4293311930),
      outline: Color(4289562757),
      outlineVariant: Color(4284301118),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294761432),
      inversePrimary: Color(4290707490),
      primaryFixed: Color(4294957783),
      onPrimaryFixed: Color(4282449925),
      primaryFixedDim: Color(4294947759),
      onPrimaryFixedVariant: Color(4287823895),
      secondaryFixed: Color(4294957783),
      onSecondaryFixed: Color(4282449925),
      secondaryFixedDim: Color(4294947759),
      onSecondaryFixedVariant: Color(4287175713),
      tertiaryFixed: Color(4294958273),
      onTertiaryFixed: Color(4281210112),
      tertiaryFixedDim: Color(4294948729),
      onTertiaryFixedVariant: Color(4285282816),
      surfaceDim: Color(4280225550),
      surfaceBright: Color(4282987571),
      surfaceContainerLowest: Color(4279831049),
      surfaceContainerLow: Color(4280817430),
      surfaceContainer: Color(4281146138),
      surfaceContainerHigh: Color(4281869604),
      surfaceContainerHighest: Color(4282658862),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294949301),
      surfaceTint: Color(4294947759),
      onPrimary: Color(4281794564),
      primaryContainer: Color(4294923093),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294949301),
      onSecondary: Color(4281794564),
      secondaryContainer: Color(4293682531),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294950277),
      onTertiary: Color(4280684800),
      tertiaryContainer: Color(4292049692),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4280225550),
      onSurface: Color(4294965753),
      onSurfaceVariant: Color(4293640638),
      outline: Color(4290812567),
      outlineVariant: Color(4288576120),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294761432),
      inversePrimary: Color(4287954968),
      primaryFixed: Color(4294957783),
      onPrimaryFixed: Color(4281139203),
      primaryFixedDim: Color(4294947759),
      onPrimaryFixedVariant: Color(4285726736),
      secondaryFixed: Color(4294957783),
      onSecondaryFixed: Color(4281139203),
      secondaryFixedDim: Color(4294947759),
      onSecondaryFixedVariant: Color(4285597458),
      tertiaryFixed: Color(4294958273),
      onTertiaryFixed: Color(4280224768),
      tertiaryFixedDim: Color(4294948729),
      onTertiaryFixedVariant: Color(4283706368),
      surfaceDim: Color(4280225550),
      surfaceBright: Color(4282987571),
      surfaceContainerLowest: Color(4279831049),
      surfaceContainerLow: Color(4280817430),
      surfaceContainer: Color(4281146138),
      surfaceContainerHigh: Color(4281869604),
      surfaceContainerHighest: Color(4282658862),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294965753),
      surfaceTint: Color(4294947759),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294949301),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965753),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294949301),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966008),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294950277),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4280225550),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294965753),
      outline: Color(4293640638),
      outlineVariant: Color(4293640638),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294761432),
      inversePrimary: Color(4284219403),
      primaryFixed: Color(4294959325),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294949301),
      onPrimaryFixedVariant: Color(4281794564),
      secondaryFixed: Color(4294959325),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294949301),
      onSecondaryFixedVariant: Color(4281794564),
      tertiaryFixed: Color(4294959563),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294950277),
      onTertiaryFixedVariant: Color(4280684800),
      surfaceDim: Color(4280225550),
      surfaceBright: Color(4282987571),
      surfaceContainerLowest: Color(4279831049),
      surfaceContainerLow: Color(4280817430),
      surfaceContainer: Color(4281146138),
      surfaceContainerHigh: Color(4281869604),
      surfaceContainerHighest: Color(4282658862),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
