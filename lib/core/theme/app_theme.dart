// lib/core/theme/app_theme.dart
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'text_styles.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      primaryColorDark: AppColors.primaryVariant,
      scaffoldBackgroundColor: AppColors.background,
    
      textTheme: TextTheme(
        titleLarge: TextStyles.headline1,
        bodyLarge: TextStyles.bodyText1,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      primaryColorDark: AppColors.primaryVariant,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TextTheme(
        titleLarge: TextStyles.headline1.copyWith(color: AppColors.onPrimary),
        bodyLarge: TextStyles.bodyText1.copyWith(color: AppColors.onPrimary),
      ),
    );
  }
}
