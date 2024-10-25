import 'package:ricky_and_morty_test_task/core/utils/either.dart';
import 'package:ricky_and_morty_test_task/core/utils/failure.dart';
import 'package:ricky_and_morty_test_task/features/domain/models/character/character.dart';

abstract class CharactersRepository {
  Future<Either<Failure, List<Character>>> getCharacters();
}