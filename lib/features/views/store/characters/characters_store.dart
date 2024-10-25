import 'package:mobx/mobx.dart';
import 'package:ricky_and_morty_test_task/features/domain/models/character/character.dart';
import 'package:ricky_and_morty_test_task/features/use_cases/fetch_characters_use_case.dart';

part 'characters_store.g.dart';

// ignore: library_private_types_in_public_api
class CharactersStore = _CharactersStoreBase with _$CharactersStore;

abstract class _CharactersStoreBase with Store {  
  final FetchCharactersUseCase fetchCharactersUseCase;

  _CharactersStoreBase(this.fetchCharactersUseCase);

  @observable
  ObservableList<Character> characters = ObservableList<Character>();

  @observable
  bool isLoading = false;

  @observable
  Exception? error;

  @computed
  bool get hasError => error != null;

  @computed
  bool get hasData => characters.isNotEmpty;

  @computed
  bool get isEmpty => characters.isEmpty && !isLoading && error == null;

  @action
  Future<void> fetch({bool forceReload = false}) async {
    if (characters.isNotEmpty && !forceReload) return;

    _setLoadingState(true);
    final result = await fetchCharactersUseCase.execute();
    result.isSuccess ? _onFetchSuccess(result.characters!) : _onFetchError(result.error!);
  }

  @action
  void _onFetchSuccess(List<Character> fetchedCharacters) {
    characters = ObservableList.of(fetchedCharacters);
    _resetLoadingAndError();
  }

  @action
  void _onFetchError(Exception exception) {
    error = exception;
    isLoading = false;
  }

  @action
  void _setLoadingState(bool value) {
    isLoading = value;
    error = null;
  }

  @action
  void _resetLoadingAndError() {
    isLoading = false;
    error = null;
  }

  Character? getCharacterById(int id) {
    if (characters.where((element) => element.id == id).isNotEmpty) {
      return characters.firstWhere((element) => element.id == id);
    }
    return null;
  }
}
