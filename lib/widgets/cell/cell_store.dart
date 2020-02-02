import 'package:mobx/mobx.dart';
part 'cell_store.g.dart';

class CellStore = _CellStore with _$CellStore;

abstract class _CellStore with Store{
  _CellStore(this.cellIndex, this.rowIndex, this.colIndex, this.value);

  @observable
  int value;
  int rowIndex;
  int colIndex;
  int cellIndex;
  @action
  setValue(int newValue){
    this.value = newValue;
  }

}