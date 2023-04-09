import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'size_constants.dart';
import 'typography.dart';

export 'colors.dart';
export 'size_constants.dart';
export 'typography.dart';

class AppTheme {
  static const double _buttonRadius = kPadding;

  // Shared sub theme data for light, darktheme.
  static FlexSubThemesData get _commonSubThemeData => FlexSubThemesData(
        buttonPadding: const EdgeInsets.symmetric(
          horizontal: kPadding * 2,
          vertical: kPadding * 2.5,
        ),
        elevatedButtonElevation: kPadding / 2,
        elevatedButtonRadius: _buttonRadius,
        textButtonRadius: _buttonRadius,
        outlinedButtonRadius: _buttonRadius,
        inputDecoratorRadius: _buttonRadius,
        elevatedButtonTextStyle:
            MaterialStateProperty.all(AppTextStyle.titleMedium),
        elevatedButtonSchemeColor: SchemeColor.onPrimary,
        elevatedButtonSecondarySchemeColor: SchemeColor.primary,
        outlinedButtonOutlineSchemeColor: SchemeColor.primary,
        checkboxSchemeColor: SchemeColor.primary,
        inputDecoratorSchemeColor: SchemeColor.tertiary,
        inputDecoratorIsFilled: true,
        fabSchemeColor: SchemeColor.primary,
        chipSchemeColor: SchemeColor.primary,
        cardElevation: kPadding,
        cardRadius: kPadding * 2,
        popupMenuRadius: kPadding,
        bottomNavigationBarSelectedIconSchemeColor: SchemeColor.onBackground,
        bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.onBackground,
      );

  static ThemeData get light {
    final theme = FlexThemeData.light(
      colorScheme: AppColors.getLightColorScheme,
      textTheme: AppTextStyle.textTheme,
      fontFamily: 'NunitoSans',
      primaryTextTheme: AppTextStyle.textTheme.apply(
        bodyColor: AppColors.primary,
        displayColor: AppColors.primary,
        decorationColor: AppColors.primary,
      ),
      usedColors: 2,
      surfaceMode: FlexSurfaceMode.level,
      blendLevel: 9,
      appBarStyle: FlexAppBarStyle.scaffoldBackground,
      surface: AppColors.surface,
      tones: FlexTones.material(Brightness.light).onMainsUseBW(),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      subThemesData: _commonSubThemeData,
    );

    return theme;
  }

  static ThemeData get dark {
    final theme = FlexThemeData.dark(
      colorScheme: AppColors.getDarkColorScheme,
      textTheme: AppTextStyle.textTheme,
      fontFamily: 'NunitoSans',
      primaryTextTheme: AppTextStyle.textTheme.apply(
        bodyColor: AppColors.surface,
        displayColor: AppColors.surface,
        decorationColor: AppColors.surface,
      ),
      usedColors: 6,
      appBarStyle: FlexAppBarStyle.scaffoldBackground,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      surface: AppColors.surfaceDark,
      blendLevel: 15,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      subThemesData: _commonSubThemeData,
    );

    return theme;
  }
}
