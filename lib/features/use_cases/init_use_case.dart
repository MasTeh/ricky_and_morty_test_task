import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ricky_and_morty_test_task/core/config/config.dart';
import 'package:ricky_and_morty_test_task/core/dio_client/dio_client.dart';
import 'package:ricky_and_morty_test_task/features/data/data_sources/dio_clients/default_dio_client.dart';
import 'package:ricky_and_morty_test_task/features/data/repositories/characters/characters_repository_impl.dart';
import 'package:ricky_and_morty_test_task/features/domain/repositories/characters_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class InitUseCase {
  const InitUseCase._();

  static Future<void> execute(Config config) async {
    final prefs = await SharedPreferences.getInstance();
    _DenepdencyInjection.execute(config: config, prefs: prefs);
  }
}

final class _DenepdencyInjection {
  static final getIt = GetIt.instance;

  static void execute({required Config config, required SharedPreferences prefs}) async {
    _putConfig(config);
    _putDioInstances();
    _putRepositories();
    _putSharedPrefs(prefs);
  }

  static void _putDioInstances() {
    final baseDioClient = Dio(BaseOptions(baseUrl: getIt<Config>().baseUrl))
      ..interceptors.add(LogInterceptor(responseBody: true, request: true));
    getIt.registerLazySingleton<DioClient>(() => DefaultDioClient(dio: baseDioClient));
  }

  static void _putConfig(Config config) {
    getIt.registerLazySingleton<Config>(() => config);
  }

  static void _putRepositories() {
    getIt.registerLazySingleton<CharactersRepository>(
        () => CharactersRepositoryImpl(dioClient: getIt()));
  }

  static void _putSharedPrefs(SharedPreferences prefs) async {
    getIt.registerLazySingleton<SharedPreferences>(() => prefs);
  }
}
