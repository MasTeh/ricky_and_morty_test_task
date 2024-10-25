import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ricky_and_morty_test_task/features/use_cases/fetch_characters_use_case.dart';
import 'package:ricky_and_morty_test_task/features/views/screens/character_details/character_details.dart';
import 'package:ricky_and_morty_test_task/features/views/screens/character_list/character_list_screen.dart';
import 'package:ricky_and_morty_test_task/features/views/store/characters/characters_store.dart';
import 'package:ricky_and_morty_test_task/features/views/store/characters_likes/characters_likes_store.dart';

final characterStore = CharactersStore(FetchCharactersUseCase());
final charactersLikesStore = CharactersLikesStore();

final appRoutes = GoRouter(routes: [
  GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        characterStore.fetch();        

        return MaterialPage(
            child: CharacterListScreen(store: characterStore, likesStore: charactersLikesStore));
      },
      routes: [
        GoRoute(
            path: '/character_details',
            pageBuilder: (context, state) {
              final characterId = state.extra as int?;
              final character = characterStore.getCharacterById(characterId!);

              return MaterialPage(child: CharacterDetails(character: character!));
            })
      ]),
]);
