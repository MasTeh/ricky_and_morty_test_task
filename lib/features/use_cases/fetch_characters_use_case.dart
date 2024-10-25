import 'package:get_it/get_it.dart';
import 'package:ricky_and_morty_test_task/features/domain/models/character/character.dart';
import 'package:ricky_and_morty_test_task/features/domain/repositories/characters_repository.dart';

class FetchCharactersUseCase {
  final repository = GetIt.instance<CharactersRepository>();

  Future<FetchCharactersState> execute() async {
    final result = await repository.getCharacters();
    return result.fold(
      (error) => FetchCharactersState.error(CharactersException(error.message)),
      (characters) => FetchCharactersState.success(characters),
    );
  }
}

class FetchCharactersState {
  final List<Character>? characters;
  final Exception? error;

  bool get isSuccess => characters != null;

  FetchCharactersState._({this.characters, this.error});

  factory FetchCharactersState.success(List<Character> characters) {
    return FetchCharactersState._(characters: characters);
  }

  factory FetchCharactersState.error(Exception error) {
    return FetchCharactersState._(error: error);
  }
}

class CharactersException implements Exception {
  final String message;

  CharactersException(this.message);
}
