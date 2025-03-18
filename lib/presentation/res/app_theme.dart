import 'package:flutter_brighthr_task/presentation/res/app_text_styles.dart';
import 'package:flutter_brighthr_task/presentation/res/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // static ThemeData dark() {
  //   const colors = ColorScheme.dark();
  //   return common(Brightness.dark, colors);
  // }

  static ThemeData light(BuildContext context) {
    final colors = AppColors.lightColorScheme();
    return common(Brightness.light, colors, context);
  }

  static ThemeData common(
    Brightness brightness,
    ColorScheme colorScheme,
    BuildContext context,
  ) {
    final style = AppTextStyles.textTheme(colorScheme, context);
    final theme = ThemeData(
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: brightness,
      colorScheme: colorScheme,
      textTheme: style,
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: AppBarTheme(
        titleTextStyle: style.headlineLarge?.copyWith(
          color: colorScheme.onSecondary,
        ),
        centerTitle: false,
        color: AppColors.secondaryBG,
      ),
      sliderTheme: const SliderThemeData(),
      cardTheme: const CardTheme(
        color: AppColors.white,
        surfaceTintColor: AppColors.white,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.darkPurple,
          textStyle: style.labelMedium?.copyWith(color: AppColors.white),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ),
    );
    return theme;
  }
}

extension ThemeExt on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}

extension TextThemeExt on BuildContext {
  double get textScaleFactor {
    return 1;
    // const double baselineWidth = 390;
    // // const double baselineHeight = 844;
    // double deviceWidth = MediaQuery.of(this).size.width;
    // // double deviceHeight = MediaQuery.of(this).size.height;
    // // Calculate scale factors for width and height
    // double scaleFactorWidth = deviceWidth / baselineWidth;
    // // double scaleFactorHeight = deviceHeight / baselineHeight;
    // // Calculate combined scale factor (geometric mean)
    // // double scaleFactor = sqrt(scaleFactorWidth * scaleFactorHeight);
    // // print(scaleFactorWidth);
    // return scaleFactorWidth;
  }

  double get textScaleFactorNew {
    //return 1;
    const double baselineWidth = 390;
    // const double baselineHeight = 844;
    double deviceWidth = MediaQuery.of(this).size.width;
    // double deviceHeight = MediaQuery.of(this).size.height;
    // Calculate scale factors for width and height
    double scaleFactorWidth = deviceWidth / baselineWidth;
    // double scaleFactorHeight = deviceHeight / baselineHeight;
    // Calculate combined scale factor (geometric mean)
    // double scaleFactor = sqrt(scaleFactorWidth * scaleFactorHeight);
    // print(scaleFactorWidth);
    return scaleFactorWidth;
  }
}

class Dimens {
  static double buttonBorderRadius = 10;
}
