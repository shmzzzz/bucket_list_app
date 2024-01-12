import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff8e4c32),
      surfaceTint: Color(0xff8e4c32),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdbce),
      onPrimaryContainer: Color(0xff370d00),
      secondary: Color(0xff77574b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdbce),
      onSecondaryContainer: Color(0xff2c160d),
      tertiary: Color(0xff695e30),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfff1e3a8),
      onTertiaryContainer: Color(0xff211b00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffff8f6),
      onBackground: Color(0xff231a16),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff231a16),
      surfaceVariant: Color(0xfff5ded6),
      onSurfaceVariant: Color(0xff53433e),
      outline: Color(0xff85736d),
      outlineVariant: Color(0xffd8c2bb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2a),
      inverseOnSurface: Color(0xffffede7),
      inversePrimary: Color(0xffffb59a),
      primaryFixed: Color(0xffffdbce),
      onPrimaryFixed: Color(0xff370d00),
      primaryFixedDim: Color(0xffffb59a),
      onPrimaryFixedVariant: Color(0xff71361d),
      secondaryFixed: Color(0xffffdbce),
      onSecondaryFixed: Color(0xff2c160d),
      secondaryFixedDim: Color(0xffe7beaf),
      onSecondaryFixedVariant: Color(0xff5d4035),
      tertiaryFixed: Color(0xfff1e3a8),
      onTertiaryFixed: Color(0xff211b00),
      tertiaryFixedDim: Color(0xffd5c78e),
      onTertiaryFixedVariant: Color(0xff50471a),
      surfaceDim: Color(0xffe8d6d1),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ec),
      surfaceContainer: Color(0xfffceae4),
      surfaceContainerHigh: Color(0xfff7e4df),
      surfaceContainerHighest: Color(0xfff1dfd9),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff6c321a),
      surfaceTint: Color(0xff8e4c32),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa96246),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff593c31),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8f6d61),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4c4317),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff807543),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f6),
      onBackground: Color(0xff231a16),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff231a16),
      surfaceVariant: Color(0xfff5ded6),
      onSurfaceVariant: Color(0xff4e403a),
      outline: Color(0xff6c5b56),
      outlineVariant: Color(0xff897771),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2a),
      inverseOnSurface: Color(0xffffede7),
      inversePrimary: Color(0xffffb59a),
      primaryFixed: Color(0xffa96246),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff8c4a30),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8f6d61),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff745549),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff807543),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff665c2d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d6d1),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ec),
      surfaceContainer: Color(0xfffceae4),
      surfaceContainerHigh: Color(0xfff7e4df),
      surfaceContainerHighest: Color(0xfff1dfd9),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff421200),
      surfaceTint: Color(0xff8e4c32),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6c321a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff341c13),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff593c31),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff292200),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4c4317),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f6),
      onBackground: Color(0xff231a16),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xfff5ded6),
      onSurfaceVariant: Color(0xff2e211d),
      outline: Color(0xff4e403a),
      outlineVariant: Color(0xff4e403a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2a),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffffe7df),
      primaryFixed: Color(0xff6c321a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff501d06),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff593c31),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff40261d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff4c4317),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff342c03),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d6d1),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ec),
      surfaceContainer: Color(0xfffceae4),
      surfaceContainerHigh: Color(0xfff7e4df),
      surfaceContainerHighest: Color(0xfff1dfd9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb59a),
      surfaceTint: Color(0xffffb59a),
      onPrimary: Color(0xff552009),
      primaryContainer: Color(0xff71361d),
      onPrimaryContainer: Color(0xffffdbce),
      secondary: Color(0xffe7beaf),
      onSecondary: Color(0xff442a20),
      secondaryContainer: Color(0xff5d4035),
      onSecondaryContainer: Color(0xffffdbce),
      tertiary: Color(0xffd5c78e),
      onTertiary: Color(0xff383005),
      tertiaryContainer: Color(0xff50471a),
      onTertiaryContainer: Color(0xfff1e3a8),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff1a110e),
      onBackground: Color(0xfff1dfd9),
      surface: Color(0xff1a110e),
      onSurface: Color(0xfff1dfd9),
      surfaceVariant: Color(0xff53433e),
      onSurfaceVariant: Color(0xffd8c2bb),
      outline: Color(0xffa08d86),
      outlineVariant: Color(0xff53433e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfd9),
      inverseOnSurface: Color(0xff392e2a),
      inversePrimary: Color(0xff8e4c32),
      primaryFixed: Color(0xffffdbce),
      onPrimaryFixed: Color(0xff370d00),
      primaryFixedDim: Color(0xffffb59a),
      onPrimaryFixedVariant: Color(0xff71361d),
      secondaryFixed: Color(0xffffdbce),
      onSecondaryFixed: Color(0xff2c160d),
      secondaryFixedDim: Color(0xffe7beaf),
      onSecondaryFixedVariant: Color(0xff5d4035),
      tertiaryFixed: Color(0xfff1e3a8),
      onTertiaryFixed: Color(0xff211b00),
      tertiaryFixedDim: Color(0xffd5c78e),
      onTertiaryFixedVariant: Color(0xff50471a),
      surfaceDim: Color(0xff1a110e),
      surfaceBright: Color(0xff423733),
      surfaceContainerLowest: Color(0xff140c09),
      surfaceContainerLow: Color(0xff231a16),
      surfaceContainer: Color(0xff271e1a),
      surfaceContainerHigh: Color(0xff322824),
      surfaceContainerHighest: Color(0xff3d322f),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffbba2),
      surfaceTint: Color(0xffffb59a),
      onPrimary: Color(0xff2f0a00),
      primaryContainer: Color(0xffca7d5f),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffebc2b3),
      onSecondary: Color(0xff261108),
      secondaryContainer: Color(0xffad897b),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd9cb92),
      onTertiary: Color(0xff1b1600),
      tertiaryContainer: Color(0xff9d915d),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff1a110e),
      onBackground: Color(0xfff1dfd9),
      surface: Color(0xff1a110e),
      onSurface: Color(0xfffff9f8),
      surfaceVariant: Color(0xff53433e),
      onSurfaceVariant: Color(0xffdcc6bf),
      outline: Color(0xffb39f98),
      outlineVariant: Color(0xff927f79),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfd9),
      inverseOnSurface: Color(0xff322824),
      inversePrimary: Color(0xff73371e),
      primaryFixed: Color(0xffffdbce),
      onPrimaryFixed: Color(0xff260700),
      primaryFixedDim: Color(0xffffb59a),
      onPrimaryFixedVariant: Color(0xff5c260f),
      secondaryFixed: Color(0xffffdbce),
      onSecondaryFixed: Color(0xff200c05),
      secondaryFixedDim: Color(0xffe7beaf),
      onSecondaryFixedVariant: Color(0xff4a3026),
      tertiaryFixed: Color(0xfff1e3a8),
      onTertiaryFixed: Color(0xff151100),
      tertiaryFixedDim: Color(0xffd5c78e),
      onTertiaryFixedVariant: Color(0xff3e360b),
      surfaceDim: Color(0xff1a110e),
      surfaceBright: Color(0xff423733),
      surfaceContainerLowest: Color(0xff140c09),
      surfaceContainerLow: Color(0xff231a16),
      surfaceContainer: Color(0xff271e1a),
      surfaceContainerHigh: Color(0xff322824),
      surfaceContainerHighest: Color(0xff3d322f),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f8),
      surfaceTint: Color(0xffffb59a),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffbba2),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffebc2b3),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf5),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd9cb92),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff1a110e),
      onBackground: Color(0xfff1dfd9),
      surface: Color(0xff1a110e),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff53433e),
      onSurfaceVariant: Color(0xfffff9f8),
      outline: Color(0xffdcc6bf),
      outlineVariant: Color(0xffdcc6bf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfd9),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff4d1a04),
      primaryFixed: Color(0xffffe0d6),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffbba2),
      onPrimaryFixedVariant: Color(0xff2f0a00),
      secondaryFixed: Color(0xffffe0d6),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffebc2b3),
      onSecondaryFixedVariant: Color(0xff261108),
      tertiaryFixed: Color(0xfff6e7ac),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd9cb92),
      onTertiaryFixedVariant: Color(0xff1b1600),
      surfaceDim: Color(0xff1a110e),
      surfaceBright: Color(0xff423733),
      surfaceContainerLowest: Color(0xff140c09),
      surfaceContainerLow: Color(0xff231a16),
      surfaceContainer: Color(0xff271e1a),
      surfaceContainerHigh: Color(0xff322824),
      surfaceContainerHighest: Color(0xff3d322f),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
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


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
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
