// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      status: $enumDecode(_$CharacterStatusEnumMap, json['status']),
      species: $enumDecode(_$CharacterSpeciesEnumMap, json['species']),
      type: json['type'] as String,
      gender: $enumDecode(_$CharacterGenderEnumMap, json['gender']),
      origin: EntityLink.fromJson(json['origin'] as Map<String, dynamic>),
      location: EntityLink.fromJson(json['location'] as Map<String, dynamic>),
      image: json['image'] as String,
      episode:
          (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': _$CharacterStatusEnumMap[instance.status]!,
      'species': _$CharacterSpeciesEnumMap[instance.species]!,
      'type': instance.type,
      'gender': _$CharacterGenderEnumMap[instance.gender]!,
      'origin': instance.origin,
      'location': instance.location,
      'image': instance.image,
      'episode': instance.episode,
    };

const _$CharacterStatusEnumMap = {
  CharacterStatus.alive: 'Alive',
  CharacterStatus.dead: 'Dead',
  CharacterStatus.unknown: 'unknown',
};

const _$CharacterSpeciesEnumMap = {
  CharacterSpecies.human: 'Human',
  CharacterSpecies.alien: 'Alien',
  CharacterSpecies.unknown: 'unknown',
};

const _$CharacterGenderEnumMap = {
  CharacterGender.male: 'Male',
  CharacterGender.female: 'Female',
  CharacterGender.unknown: 'unknown',
};
