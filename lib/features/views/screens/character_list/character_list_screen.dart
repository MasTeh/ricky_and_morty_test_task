import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:ricky_and_morty_test_task/core/extensions/context_extensions.dart';
import 'package:ricky_and_morty_test_task/core/images/svg_images.dart';
import 'package:ricky_and_morty_test_task/features/domain/models/character/character.dart';
import 'package:ricky_and_morty_test_task/features/views/store/characters/characters_store.dart';
import 'package:ricky_and_morty_test_task/features/views/store/characters_likes/characters_likes_store.dart';
import 'package:ricky_and_morty_test_task/features/views/widgets/box_rounded_corners.dart';
import 'package:badges/badges.dart' as badges;

class CharacterListScreen extends StatelessWidget {
  const CharacterListScreen({super.key, required this.store, required this.likesStore});

  final CharactersStore store;
  final CharactersLikesStore likesStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Observer(
      builder: (context) => store.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                ),
                itemCount: store.characters.length,
                itemBuilder: (context, index) {
                  final character = store.characters[index];
                  return CharacterCard(character: character, likesStore: likesStore);
                },
              ),
            ),
    ));
  }
}

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, required this.character, required this.likesStore});
  final Character character;
  final CharactersLikesStore likesStore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          context.go('/character_details', extra: character.id);
        },
        child: badges.Badge(
          position: badges.BadgePosition.topEnd(top: 8, end: 8),
          badgeStyle: badges.BadgeStyle(
            badgeColor: context.colorsPalette.background,
            shape: badges.BadgeShape.circle,
            padding: const EdgeInsets.all(6),
          ),
          badgeContent: GestureDetector(
              onTap: () {
                likesStore.toggleLike(character.id);
              },
              child:
                  Observer(
                    builder: (context) {
                      if (likesStore.isLiked(character.id)) {
                        return SvgAssets.build(SvgIcon.liked, size: 20, color: context.colorsPalette.accent);
                      }
                      return SvgAssets.build(SvgIcon.unliked, size: 20, color: context.colorsPalette.accent);
                    }
                  )),
          child: BoxRoundedCorners(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.network(character.image),
            Text(character.name, style: context.stylesPalette.titleMedium)
          ])),
        ),
      ),
    );
  }
}
