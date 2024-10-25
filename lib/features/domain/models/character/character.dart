import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ricky_and_morty_test_task/features/domain/models/entity_link/entity_link.dart';

part 'character.freezed.dart';
part 'character.g.dart';

enum CharacterStatus {
  @JsonValue('Alive')
  alive,
  @JsonValue('Dead')
  dead,
  @JsonValue('unknown')
  unknown
}

enum CharacterGender {
  @JsonValue('Male')
  male,
  @JsonValue('Female')
  female,
  @JsonValue('unknown')
  unknown
}

enum CharacterSpecies {
  @JsonValue('Human')
  human,
  @JsonValue('Alien')
  alien,
  @JsonValue('unknown')
  unknown
}

@freezed
class Character with _$Character {
  const factory Character(
      {required int id,
      required String name,
      required CharacterStatus status,
      required CharacterSpecies species,
      required String type,
      required CharacterGender gender,
      required EntityLink origin,
      required EntityLink location,
      required String image,      
      required List<String> episode
      }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);

}
