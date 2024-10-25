// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CharactersStore on _CharactersStoreBase, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_CharactersStoreBase.hasError'))
          .value;
  Computed<bool>? _$hasDataComputed;

  @override
  bool get hasData => (_$hasDataComputed ??= Computed<bool>(() => super.hasData,
          name: '_CharactersStoreBase.hasData'))
      .value;
  Computed<bool>? _$isEmptyComputed;

  @override
  bool get isEmpty => (_$isEmptyComputed ??= Computed<bool>(() => super.isEmpty,
          name: '_CharactersStoreBase.isEmpty'))
      .value;

  late final _$charactersAtom =
      Atom(name: '_CharactersStoreBase.characters', context: context);

  @override
  ObservableList<Character> get characters {
    _$charactersAtom.reportRead();
    return super.characters;
  }

  @override
  set characters(ObservableList<Character> value) {
    _$charactersAtom.reportWrite(value, super.characters, () {
      super.characters = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_CharactersStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorAtom =
      Atom(name: '_CharactersStoreBase.error', context: context);

  @override
  Exception? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(Exception? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$fetchAsyncAction =
      AsyncAction('_CharactersStoreBase.fetch', context: context);

  @override
  Future<void> fetch({bool forceReload = false}) {
    return _$fetchAsyncAction.run(() => super.fetch(forceReload: forceReload));
  }

  late final _$_CharactersStoreBaseActionController =
      ActionController(name: '_CharactersStoreBase', context: context);

  @override
  void _onFetchSuccess(List<Character> fetchedCharacters) {
    final _$actionInfo = _$_CharactersStoreBaseActionController.startAction(
        name: '_CharactersStoreBase._onFetchSuccess');
    try {
      return super._onFetchSuccess(fetchedCharacters);
    } finally {
      _$_CharactersStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _onFetchError(Exception exception) {
    final _$actionInfo = _$_CharactersStoreBaseActionController.startAction(
        name: '_CharactersStoreBase._onFetchError');
    try {
      return super._onFetchError(exception);
    } finally {
      _$_CharactersStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setLoadingState(bool value) {
    final _$actionInfo = _$_CharactersStoreBaseActionController.startAction(
        name: '_CharactersStoreBase._setLoadingState');
    try {
      return super._setLoadingState(value);
    } finally {
      _$_CharactersStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _resetLoadingAndError() {
    final _$actionInfo = _$_CharactersStoreBaseActionController.startAction(
        name: '_CharactersStoreBase._resetLoadingAndError');
    try {
      return super._resetLoadingAndError();
    } finally {
      _$_CharactersStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
characters: ${characters},
isLoading: ${isLoading},
error: ${error},
hasError: ${hasError},
hasData: ${hasData},
isEmpty: ${isEmpty}
    ''';
  }
}
