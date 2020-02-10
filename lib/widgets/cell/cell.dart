import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:sudoko/widgets/board/selected_cell_store.dart';
import 'package:sudoko/widgets/cell/cell_store.dart';

class BorderColors {
  Color top;
  Color left;
  Color bottom;
  Color right;
}

class Cell extends StatelessWidget {
  final CellStore cellStore;
  final SelectedCellStore selectedCellStore;
  final void Function(CellStore cellStore) onSelectedCallBack;
  static const valueTextStyle = TextStyle(fontSize: 18,color: Color(0xFF8DA1AE));
  const Cell(this.cellStore, this.selectedCellStore, this.onSelectedCallBack);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: this.onCellTapped,
        child: Container(
          decoration: BoxDecoration(
            color: this.getBackgroundColor,
            border: Border(
                top: BorderSide(color: this.getBordersColor.top, width: 1),
                bottom:
                    BorderSide(color: this.getBordersColor.bottom, width: 1),
                left: BorderSide(color: this.getBordersColor.left, width: 1),
                right: BorderSide(color: this.getBordersColor.right, width: 1)),
            // borderRadius: this.getBorderRadius(
            //     this.cellStore.rowIndex, this.cellStore.colIndex)
          ),
          child: Center(
              child: Observer(builder: (_) => getCellContent(_))
              //this.cellStore.value
              ),
        ));
  }
  Widget getCellContent(_){
    if(cellStore.isNoteMode){
      return Text('N');
    }else{
      return Observer(builder: (_) => cellBuilder(this.cellStore.value));
    }
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
    return Text(
      '${value}',
      style: Cell.valueTextStyle,
    );
  }

  @computed
  BorderColors get getBordersColor {
    final borderColors = new BorderColors();
    if (this.selectedCellStore != null &&
        cellStore.cellIndex == this.selectedCellStore.cellIndex) {
      var color = Color.fromARGB(255, 102, 243, 194);
      borderColors.top = color;
      borderColors.bottom = color;
      borderColors.left = color;
      borderColors.right = color;
      return borderColors;
    }
    int rowIndex = this.cellStore.rowIndex;
    int colIndex = this.cellStore.colIndex;
    if (rowIndex == 1 || rowIndex == 4 || rowIndex == 7) {
      borderColors.top = Color.fromARGB(255, 130, 130, 130);
    } else {
      borderColors.top = Color.fromARGB(255, 207, 211, 220);
    }
    if (rowIndex == 3 || rowIndex == 6 || rowIndex == 9) {
      borderColors.bottom = Color.fromARGB(255, 130, 130, 130);
    } else {
      borderColors.bottom = Color.fromARGB(255, 207, 211, 220);
    }
    if (colIndex == 1 || colIndex == 4 || colIndex == 7) {
      borderColors.left = Color.fromARGB(255, 130, 130, 130);
    } else {
      borderColors.left = Color.fromARGB(255, 207, 211, 220);
    }
    if (colIndex == 3 || colIndex == 6 || colIndex == 9) {
      borderColors.right = Color.fromARGB(255, 130, 130, 130);
    } else {
      borderColors.right = Color.fromARGB(255, 207, 211, 220);
    }
    return borderColors;
  }

  @computed
  get getBackgroundColor {
    if (this.selectedCellStore != null) {
      if (cellStore.cellIndex == this.selectedCellStore.cellIndex) {
        return Color.fromARGB(255, 238, 252, 247);
      }
      if (cellStore.colIndex == this.selectedCellStore.colIndex ||
          cellStore.rowIndex == this.selectedCellStore.rowIndex) {
        return Color.fromARGB(255, 238, 239, 242);
      }
    }
    return Colors.white;
  }

  onCellTapped() {
    this.onSelectedCallBack(this.cellStore);
  }
}
