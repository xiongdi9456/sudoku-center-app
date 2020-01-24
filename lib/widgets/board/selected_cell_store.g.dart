// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_cell_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SelectedCellStore on _SelectedCellStore, Store {
  final _$colIndexAtom = Atom(name: '_SelectedCellStore.colIndex');

  @override
  int get colIndex {
    _$colIndexAtom.context.enforceReadPolicy(_$colIndexAtom);
    _$colIndexAtom.reportObserved();
    return super.colIndex;
  }

  @override
  set colIndex(int value) {
    _$colIndexAtom.context.conditionallyRunInAction(() {
      super.colIndex = value;
      _$colIndexAtom.reportChanged();
    }, _$colIndexAtom, name: '${_$colIndexAtom.name}_set');
  }

  final _$rowIndexAtom = Atom(name: '_SelectedCellStore.rowIndex');

  @override
  int get rowIndex {
    _$rowIndexAtom.context.enforceReadPolicy(_$rowIndexAtom);
    _$rowIndexAtom.reportObserved();
    return super.rowIndex;
  }

  @override
  set rowIndex(int value) {
    _$rowIndexAtom.context.conditionallyRunInAction(() {
      super.rowIndex = value;
      _$rowIndexAtom.reportChanged();
    }, _$rowIndexAtom, name: '${_$rowIndexAtom.name}_set');
  }

  final _$cellIndexAtom = Atom(name: '_SelectedCellStore.cellIndex');

  @override
  int get cellIndex {
    _$cellIndexAtom.context.enforceReadPolicy(_$cellIndexAtom);
    _$cellIndexAtom.reportObserved();
    return super.cellIndex;
  }

  @override
  set cellIndex(int value) {
    _$cellIndexAtom.context.conditionallyRunInAction(() {
      super.cellIndex = value;
      _$cellIndexAtom.reportChanged();
    }, _$cellIndexAtom, name: '${_$cellIndexAtom.name}_set');
  }
}
