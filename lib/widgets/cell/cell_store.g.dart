// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cell_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CellStore on _CellStore, Store {
  Computed<bool> _$isNoteModeComputed;

  @override
  bool get isNoteMode =>
      (_$isNoteModeComputed ??= Computed<bool>(() => super.isNoteMode)).value;

  final _$valueAtom = Atom(name: '_CellStore.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$notesAtom = Atom(name: '_CellStore.notes');

  @override
  ObservableList<bool> get notes {
    _$notesAtom.context.enforceReadPolicy(_$notesAtom);
    _$notesAtom.reportObserved();
    return super.notes;
  }

  @override
  set notes(ObservableList<bool> value) {
    _$notesAtom.context.conditionallyRunInAction(() {
      super.notes = value;
      _$notesAtom.reportChanged();
    }, _$notesAtom, name: '${_$notesAtom.name}_set');
  }

  final _$_CellStoreActionController = ActionController(name: '_CellStore');

  @override
  dynamic setNote(int value) {
    final _$actionInfo = _$_CellStoreActionController.startAction();
    try {
      return super.setNote(value);
    } finally {
      _$_CellStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic toggleNote(int value) {
    final _$actionInfo = _$_CellStoreActionController.startAction();
    try {
      return super.toggleNote(value);
    } finally {
      _$_CellStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setValue(int newValue) {
    final _$actionInfo = _$_CellStoreActionController.startAction();
    try {
      return super.setValue(newValue);
    } finally {
      _$_CellStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clearNotes() {
    final _$actionInfo = _$_CellStoreActionController.startAction();
    try {
      return super.clearNotes();
    } finally {
      _$_CellStoreActionController.endAction(_$actionInfo);
    }
  }
}
