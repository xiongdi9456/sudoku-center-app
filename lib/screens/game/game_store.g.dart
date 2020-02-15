// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameStore on _GameStore, Store {
  final _$boardStoreAtom = Atom(name: '_GameStore.boardStore');

  @override
  BoardStore get boardStore {
    _$boardStoreAtom.context.enforceReadPolicy(_$boardStoreAtom);
    _$boardStoreAtom.reportObserved();
    return super.boardStore;
  }

  @override
  set boardStore(BoardStore value) {
    _$boardStoreAtom.context.conditionallyRunInAction(() {
      super.boardStore = value;
      _$boardStoreAtom.reportChanged();
    }, _$boardStoreAtom, name: '${_$boardStoreAtom.name}_set');
  }

  final _$isDarkModeAtom = Atom(name: '_GameStore.isDarkMode');

  @override
  bool get isDarkMode {
    _$isDarkModeAtom.context.enforceReadPolicy(_$isDarkModeAtom);
    _$isDarkModeAtom.reportObserved();
    return super.isDarkMode;
  }

  @override
  set isDarkMode(bool value) {
    _$isDarkModeAtom.context.conditionallyRunInAction(() {
      super.isDarkMode = value;
      _$isDarkModeAtom.reportChanged();
    }, _$isDarkModeAtom, name: '${_$isDarkModeAtom.name}_set');
  }

  final _$_GameStoreActionController = ActionController(name: '_GameStore');

  @override
  dynamic setDarkMode(bool value) {
    final _$actionInfo = _$_GameStoreActionController.startAction();
    try {
      return super.setDarkMode(value);
    } finally {
      _$_GameStoreActionController.endAction(_$actionInfo);
    }
  }
}
