import 'package:ricky_and_morty_test_task/core/images/svg_images.dart';
import 'package:ricky_and_morty_test_task/features/domain/models/character/character.dart';

final class CharacterStatusService {
  String string(CharacterStatus status) {
    switch (status) {
      case CharacterStatus.alive:
        return "Alive";
      case CharacterStatus.dead:
        return "Dead";
      default:
        return "Unknown";
    }
  }

  SvgIcon icon(CharacterStatus status) {
    switch (status) {
      case CharacterStatus.alive:
        return SvgIcon.statusAlive;
      case CharacterStatus.dead:
        return SvgIcon.statusDead;
      default:
        return SvgIcon.statusUnknown;
    }
  }
}