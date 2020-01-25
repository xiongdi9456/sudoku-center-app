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
}
