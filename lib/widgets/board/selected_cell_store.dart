
  import 'package:mobx/mobx.dart';
part 'selected_cell_store.g.dart';

class SelectedCellStore = _SelectedCellStore with _$SelectedCellStore;

abstract class _SelectedCellStore with Store{

  @observable
   int colIndex;
  @observable
   int rowIndex;
  @observable
   int cellIndex;
   _SelectedCellStore(this.cellIndex, this.colIndex, this.rowIndex);

}