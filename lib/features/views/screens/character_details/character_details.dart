import 'package:flutter/material.dart';
import 'package:ricky_and_morty_test_task/core/extensions/context_extensions.dart';
import 'package:ricky_and_morty_test_task/core/images/svg_images.dart';
import 'package:ricky_and_morty_test_task/features/domain/models/character/character.dart';
import 'package:ricky_and_morty_test_task/features/views/screens/character_details/service/character_gender_service.dart';
import 'package:ricky_and_morty_test_task/features/views/screens/character_details/service/character_speciaes_service.dart';
import 'package:ricky_and_morty_test_task/features/views/screens/character_details/service/character_status_service.dart';
import 'package:ricky_and_morty_test_task/features/views/widgets/custom_app_bar.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({super.key, required this.character});
  final Character character;

  @override
  Widget build(BuildContext context) {
    final statusService = CharacterStatusService();
    final genderService = CharacterGenderService();
    final speciesService = CharacterSpeciesService();

    return Scaffold(
      appBar: const CustomAppBar(),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          SizedBox(
            height: 260,
            width: double.infinity,
            child: Image.network(character.image, fit: BoxFit.cover),
          ),
          CharacterOptionWidget(
            icon: const Icon(Icons.info_outline, size: 24, color: Colors.white),
            name: "Name",
            value: character.name,
          ),
          CharacterOptionWidget(
            icon: SvgAssets.build(statusService.icon(character.status), size: 24, color: Colors.white),
            name: "Status",
            value: statusService.string(character.status),
          ),
          CharacterOptionWidget(
            icon: SvgAssets.build(speciesService.icon(character.species), size: 24, color: Colors.white),
            name: "Species",
            value: speciesService.string(character.species),
          ),
          CharacterOptionWidget(
            icon: SvgAssets.build(genderService.icon(character.gender), size: 24, color: Colors.white),
            name: "Gender",
            value: genderService.string(character.gender),
          ),
        ],
      ),
    );
  }
}

class CharacterOptionWidget extends StatelessWidget {
  const CharacterOptionWidget({
    super.key,
    required this.icon,
    required this.name,
    required this.value,
  });

  final Widget icon;
  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            child: icon,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.colorsPalette.accent,
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: context.stylesPalette.labelSmall),
              Text(value, style: context.stylesPalette.labelLarge),
            ],
          ),
        ],
      ),
    );
  }
}
