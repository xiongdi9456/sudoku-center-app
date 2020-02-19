// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on _AppStore, Store {
  final _$gameStoreAtom = Atom(name: '_AppStore.gameStore');

  @override
  GameStore get gameStore {
    _$gameStoreAtom.context.enforceReadPolicy(_$gameStoreAtom);
    _$gameStoreAtom.reportObserved();
    return super.gameStore;
  }

  @override
  set gameStore(GameStore value) {
    _$gameStoreAtom.context.conditionallyRunInAction(() {
      super.gameStore = value;
      _$gameStoreAtom.reportChanged();
    }, _$gameStoreAtom, name: '${_$gameStoreAtom.name}_set');
  }
}
