import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum SvgIcon {
  genderMale('gender/male.svg'),
  genderFemale('gender/female.svg'),
  genderUnknown('gender/unknown.svg'),
  liked('like/liked.svg'),
  unliked('like/unliked.svg'),
  speciesHuman('species/human.svg'),
  speciesAlien('species/alien.svg'),
  statusAlive('status/alive.svg'),
  statusDead('status/dead.svg'),
  statusUnknown('status/unknown.svg');

  final String assetPath;
  const SvgIcon(this.assetPath);
}

class SvgAssets {
  static const String _svgPath = 'assets/svg/icons';
  static Widget build(SvgIcon icon, {required double size, required Color color}) {
    return SvgPicture.asset(
      "$_svgPath/${icon.assetPath}",
      width: size,
      color: color           
    );
  }
}
