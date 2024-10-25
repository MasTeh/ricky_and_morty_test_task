import 'package:ricky_and_morty_test_task/core/images/svg_images.dart';
import 'package:ricky_and_morty_test_task/features/domain/models/character/character.dart';

final class CharacterGenderService {
  String string(CharacterGender gender) {
    switch (gender) {
      case CharacterGender.male:
        return "Male";
      case CharacterGender.female:
        return "Female";
      default:
        return "Unknown";
    }
  }

  SvgIcon icon(CharacterGender gender) {
    switch (gender) {
      case CharacterGender.male:
        return SvgIcon.genderMale;
      case CharacterGender.female:
        return SvgIcon.genderFemale;
      default:
        return SvgIcon.genderUnknown;
    }
  }
}