import 'package:ricky_and_morty_test_task/core/images/svg_images.dart';
import 'package:ricky_and_morty_test_task/features/domain/models/character/character.dart';

final class CharacterSpeciesService {
  String string(CharacterSpecies species) {
    switch (species) {
      case CharacterSpecies.alien:
        return "Alien";
      case CharacterSpecies.human:
        return "Human";
      default:
        return "Unknown";
    }
  }

  SvgIcon icon(CharacterSpecies species) {
    switch (species) {
      case CharacterSpecies.human:
        return SvgIcon.speciesHuman;
      default:
        return SvgIcon.speciesAlien;
    }
  }
}