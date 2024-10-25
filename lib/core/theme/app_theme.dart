import 'package:flutter/material.dart';
import 'package:ricky_and_morty_test_task/core/theme/color_palette.dart';
import 'package:ricky_and_morty_test_task/core/theme/design_colors.dart';
import 'package:ricky_and_morty_test_task/core/theme/styles_palette.dart';
import 'package:ricky_and_morty_test_task/core/theme/theme_style.dart';

final class AppTheme {
  const AppTheme._();

  static ThemeData get lightTheme => ThemeData(
        extensions: [ThemeStyle(colors: _lightColorsPalette, styles: _lightStylePalette)],        
      );

  static ColorsPalette get _lightColorsPalette {
    return const ColorsPalette(
      background: DesignColors.whiteSmoke,
      card: DesignColors.white,
      text: DesignColors.nero,
      subtitle: DesignColors.grey,
      accent: DesignColors.irisBlue,
    );
  }

  static StylesPalette get _lightStylePalette {
    return const StylesPalette(
      headlineLarge: LatoStyle.headlineLarge,
      headlineMedium: LatoStyle.headlineMedium,
      headlineSmall: LatoStyle.headlineSmall,
      titleLarge: LatoStyle.titleLarge,
      titleMedium: LatoStyle.titleMedium,
      titleSmall: LatoStyle.titleSmall,
      labelLarge: LatoStyle.labelLarge,
      labelMedium: LatoStyle.labelMedium,
      labelSmall: LatoStyle.labelSmall,
      bodyLarge: LatoStyle.bodyLarge,
      bodyMedium: LatoStyle.bodyMedium,
      bodySmall: LatoStyle.bodySmall,
    );
  }
  
}
