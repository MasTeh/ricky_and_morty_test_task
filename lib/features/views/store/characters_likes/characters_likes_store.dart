import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'characters_likes_store.g.dart';

class CharactersLikesStore = _CharactersLikesStoreBase with _$CharactersLikesStore;

abstract class _CharactersLikesStoreBase with Store {
  final SharedPreferences _sharedPreferences = GetIt.instance<SharedPreferences>();

  @observable
  ObservableMap<int, bool> likedCharactersIds = ObservableMap<int, bool>();

  _CharactersLikesStoreBase() {
    fetch(); 
  }

  @action
  Future<void> fetch() async {
    final likedCharactersIdsList = _sharedPreferences.getStringList('likedCharactersIds') ?? [];
    likedCharactersIds.clear();
    for (var idString in likedCharactersIdsList) {
      final id = int.tryParse(idString);
      if (id != null) {
        likedCharactersIds[id] = true;
      }
    }
  }

  @action
  Future<void> toggleLike(int characterId) async {
    if (likedCharactersIds.containsKey(characterId) && likedCharactersIds[characterId] == true) {
      likedCharactersIds[characterId] = false; 
    } else {
      likedCharactersIds[characterId] = true; 
    }
    likedCharactersIds = ObservableMap.of(likedCharactersIds); 
    await _saveLikesToPreferences();
  }

  bool isLiked(int characterId) => likedCharactersIds[characterId] ?? false;

  Future<void> _saveLikesToPreferences() async {
    final likedIdsList = likedCharactersIds.entries
        .where((entry) => entry.value == true)
        .map((entry) => entry.key.toString())
        .toList();
    await _sharedPreferences.setStringList('likedCharactersIds', likedIdsList);
  }
}
