// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_likes_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CharactersLikesStore on _CharactersLikesStoreBase, Store {
  late final _$likedCharactersIdsAtom = Atom(
      name: '_CharactersLikesStoreBase.likedCharactersIds', context: context);

  @override
  ObservableMap<int, bool> get likedCharactersIds {
    _$likedCharactersIdsAtom.reportRead();
    return super.likedCharactersIds;
  }

  @override
  set likedCharactersIds(ObservableMap<int, bool> value) {
    _$likedCharactersIdsAtom.reportWrite(value, super.likedCharactersIds, () {
      super.likedCharactersIds = value;
    });
  }

  late final _$fetchAsyncAction =
      AsyncAction('_CharactersLikesStoreBase.fetch', context: context);

  @override
  Future<void> fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }

  late final _$toggleLikeAsyncAction =
      AsyncAction('_CharactersLikesStoreBase.toggleLike', context: context);

  @override
  Future<void> toggleLike(int characterId) {
    return _$toggleLikeAsyncAction.run(() => super.toggleLike(characterId));
  }

  @override
  String toString() {
    return '''
likedCharactersIds: ${likedCharactersIds}
    ''';
  }
}
