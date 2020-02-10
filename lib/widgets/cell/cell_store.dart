import 'package:mobx/mobx.dart';
part 'cell_store.g.dart';

class CellStore = _CellStore with _$CellStore;

abstract class _CellStore with Store {
  _CellStore(this.cellIndex, this.rowIndex, this.colIndex, this.value) {
    for (int i = 0; i <= 9; i++) {
      this.notes.add(false);
    }
  }

  @observable
  int value;
  int rowIndex;
  int colIndex;
  int cellIndex;
  // array of 1-9 determine witch note we want to show
  @observable
  ObservableList<bool> notes = new ObservableList<bool>();

  @action
  setNote(int value) {
    this.notes[value] = true;
  }

  @action
  toggleNote(int value) {
    this.notes[value] = !this.notes[value];
  }

  @action
  setValue(int newValue) {
    this.clearNotes();
    this.value = newValue;
  }

  @action
  clearNotes() {
    for (int i = 1; i <= 9; i++) {
      this.notes[i] = false;
    }
  }

  @computed
  bool get isNoteMode {
    for (int i = 1; i <= 9; i++) {
      if (this.notes[i] && this.notes[i] == true) {
        return true;
      }
    }
    return false;
  }
}
