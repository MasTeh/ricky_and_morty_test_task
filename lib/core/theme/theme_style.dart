import 'package:flutter/material.dart';
import 'package:ricky_and_morty_test_task/core/theme/color_palette.dart';
import 'package:ricky_and_morty_test_task/core/theme/styles_palette.dart';

class ThemeStyle extends ThemeExtension<ThemeStyle> {
  const ThemeStyle({required this.colors, required this.styles});

  final ColorsPalette colors;
  final StylesPalette styles;

  @override
  ThemeExtension<ThemeStyle> copyWith() => this;

  @override
  ThemeExtension<ThemeStyle> lerp(
    ThemeExtension<ThemeStyle>? other,
    double t,
  ) =>
      this;
}
