import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/appcolors.dart';

abstract class AppTheme {
  static ThemeData light = FlexThemeData.light(
    useMaterial3: true,

    colors: FlexSchemeColor(
      primary: Appcolors.blue,
      primaryContainer: Appcolors.navy,
      secondary: Appcolors.pink,
      secondaryContainer: Appcolors.darkpink,
      tertiary: Appcolors.lightpurple,
      tertiaryContainer: Appcolors.purple,
      appBarColor: Appcolors.lightblue,
    ),

    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 10,

    subThemesData: const FlexSubThemesData(
      defaultRadius: 16,
      interactionEffects: true,
      tintedDisabledControls: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      alignedDropdown: true,
      useM2StyleDividerInM3: true,
      navigationRailUseIndicator: true,
    ),

    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );

  static ThemeData dark = FlexThemeData.dark(
    useMaterial3: true,

    colors: const FlexSchemeColor(
      primary: Color(0xFF185ABC),
      primaryContainer: Color(0xFF10346E),
      secondary: Color(0xFFEC4899),
      secondaryContainer: Color(0xFFE91E63),
      tertiary: Color(0xFFA855F7),
      tertiaryContainer: Color(0xFF7C3AED),
      appBarColor: Color(0xFF185ABC),
    ),

    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 15,

    subThemesData: const FlexSubThemesData(
      defaultRadius: 16,
      interactionEffects: true,
      tintedDisabledControls: true,
      blendOnColors: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      alignedDropdown: true,
      navigationRailUseIndicator: true,
      useM2StyleDividerInM3: true,
    ),

    scaffoldBackground: const Color(0xFF0E111A),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );
}
