import 'package:ricky_and_morty_test_task/core/dio_client/dio_client.dart';
import 'package:ricky_and_morty_test_task/core/utils/either.dart';
import 'package:ricky_and_morty_test_task/core/utils/failure.dart';
import 'package:ricky_and_morty_test_task/features/domain/models/character/character.dart';
import 'package:ricky_and_morty_test_task/features/domain/repositories/characters_repository.dart';

class CharactersRepositoryImpl extends CharactersRepository {
  final DioClient dioClient;

  CharactersRepositoryImpl({required this.dioClient});

  @override
  Future<Either<Failure, List<Character>>> getCharacters() async{
    final result = await dioClient.get('api/character');
    try {
      final characters = (result.data['results'] as List).map((e) => Character.fromJson(e)).toList();
      return Right(characters);
    } catch (e) {
      return const Left(Failure.unknown());
    }
  }
}
