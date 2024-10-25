import 'package:flutter/material.dart';
import 'package:ricky_and_morty_test_task/core/theme/color_palette.dart';
import 'package:ricky_and_morty_test_task/core/theme/styles_palette.dart';
import 'package:ricky_and_morty_test_task/core/theme/theme_style.dart';

extension ContextExtension on BuildContext {
  ColorsPalette get colorsPalette => Theme.of(this).extension<ThemeStyle>()!.colors;
  StylesPalette get stylesPalette => Theme.of(this).extension<ThemeStyle>()!.styles;
}