import 'package:mobx/mobx.dart';
import 'package:sudoko/widgets/board/selected_cell_store.dart';
import '../cell/cell_store.dart';
part 'board_store.g.dart';

class BoardStore = _BoardStore with _$BoardStore;
abstract class _BoardStore with Store{
  @observable
  ObservableList<CellStore> cellStoreList = new ObservableList<CellStore>();
  @observable
  SelectedCellStore selectedCell = new SelectedCellStore(0, 1, 2);
  @action
  addCell(int cellIndex, int rowIndex, int colIndex, int value){
    this.cellStoreList.add(new CellStore(cellIndex, rowIndex, colIndex));
  }
  @action
  selectCell(CellStore cellStore){
    this.selectedCell = new SelectedCellStore(cellStore.cellIndex, cellStore.rowIndex, cellStore.colIndex);
  }
}