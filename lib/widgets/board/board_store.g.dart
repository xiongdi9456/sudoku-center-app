// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BoardStore on _BoardStore, Store {
  final _$cellStoreListAtom = Atom(name: '_BoardStore.cellStoreList');

  @override
  ObservableList<CellStore> get cellStoreList {
    _$cellStoreListAtom.context.enforceReadPolicy(_$cellStoreListAtom);
    _$cellStoreListAtom.reportObserved();
    return super.cellStoreList;
  }

  @override
  set cellStoreList(ObservableList<CellStore> value) {
    _$cellStoreListAtom.context.conditionallyRunInAction(() {
      super.cellStoreList = value;
      _$cellStoreListAtom.reportChanged();
    }, _$cellStoreListAtom, name: '${_$cellStoreListAtom.name}_set');
  }

  final _$selectedCellAtom = Atom(name: '_BoardStore.selectedCell');

  @override
  SelectedCellStore get selectedCell {
    _$selectedCellAtom.context.enforceReadPolicy(_$selectedCellAtom);
    _$selectedCellAtom.reportObserved();
    return super.selectedCell;
  }

  @override
  set selectedCell(SelectedCellStore value) {
    _$selectedCellAtom.context.conditionallyRunInAction(() {
      super.selectedCell = value;
      _$selectedCellAtom.reportChanged();
    }, _$selectedCellAtom, name: '${_$selectedCellAtom.name}_set');
  }

  final _$_BoardStoreActionController = ActionController(name: '_BoardStore');

  @override
  dynamic addCell(int cellIndex, int rowIndex, int colIndex, int value) {
    final _$actionInfo = _$_BoardStoreActionController.startAction();
    try {
      return super.addCell(cellIndex, rowIndex, colIndex, value);
    } finally {
      _$_BoardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic selectCell(CellStore cellStore) {
    final _$actionInfo = _$_BoardStoreActionController.startAction();
    try {
      return super.selectCell(cellStore);
    } finally {
      _$_BoardStoreActionController.endAction(_$actionInfo);
    }
  }
}
