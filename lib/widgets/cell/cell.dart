import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:sudoko/widgets/board/selected_cell_store.dart';
import 'package:sudoko/widgets/cell/cell_store.dart';

class Cell extends StatelessWidget {
  final CellStore cellStore;
  final SelectedCellStore selectedCellStore;
  final void Function(CellStore cellStore) onSelectedCallBack;

  const Cell(this.cellStore, this.selectedCellStore, this.onSelectedCallBack);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: this.onCellTapped,
        child: Container(
          decoration: BoxDecoration(
              color: this.getBackgroundColor,
              border: Border.all(color: this.getBorderColor, width: 1),
              borderRadius: this.getBorderRadius(
                  this.cellStore.rowIndex, this.cellStore.colIndex)),
          child: Center(
              child: Observer(builder: (_) => cellBuilder(this.cellStore.value))
              //this.cellStore.value
              ),
        ));
  }

  getBorderRadius(int rowIndex, int colIndex) {
    if (rowIndex == 1 && colIndex == 1) {
      return BorderRadius.only(topLeft: Radius.circular(20));
    } else if (rowIndex == 1 && colIndex == 9) {
      return BorderRadius.only(topRight: Radius.circular(20));
    } else if (rowIndex == 9 && colIndex == 1) {
      return BorderRadius.only(bottomLeft: Radius.circular(20));
    } else if (rowIndex == 9 && colIndex == 9) {
      return BorderRadius.only(bottomRight: Radius.circular(20));
    } else {
      return BorderRadius.all(Radius.circular(0));
    }
  }

  Widget cellBuilder(value) {
    if (value == 0) {
      // if value was 0 mean its empty cell and user
      return Text('');
    }
    return Text('${value}');
  }

  @computed
  get getBorderColor {
    if (this.selectedCellStore != null &&
        cellStore.cellIndex == this.selectedCellStore.cellIndex) {
      return Color(0x66F3C2);
    }
    return Colors.grey;
  }

  @computed
  get getBackgroundColor {
    if (this.selectedCellStore != null) {
      if (cellStore.cellIndex == this.selectedCellStore.cellIndex) {
        return Color.fromARGB(255,238,252,247);
      }
      if(cellStore.colIndex == this.selectedCellStore.colIndex || cellStore.rowIndex == this.selectedCellStore.rowIndex){
        return Color.fromARGB(255,238,239,242);
      }
    }
    return Colors.white;
  }

  onCellTapped() {
    this.onSelectedCallBack(this.cellStore);
  }
}
