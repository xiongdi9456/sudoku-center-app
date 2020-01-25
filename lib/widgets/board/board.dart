import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sudoko/widgets/cell/cell.dart';
import 'package:sudoko/widgets/cell/cell_store.dart';
import 'board_store.dart';

class Board extends StatelessWidget {
  final BoardStore boardStore;
  Board(this.boardStore) {
    for (int r = 1; r <= 9; r++) {
      for (int c = 1; c <= 9; c++) {
        int cellIndex = (r - 1) * 9 + c - 1;
        boardStore.addCell(cellIndex, r, c, 0);
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Observer(
        builder: (_) => Table(children: [
          TableRow(children: [
            createCell(boardStore.cellStoreList[0]),
            createCell(boardStore.cellStoreList[1]),
            createCell(boardStore.cellStoreList[2]),
            createCell(boardStore.cellStoreList[3]),
            createCell(boardStore.cellStoreList[4]),
            createCell(boardStore.cellStoreList[5]),
            createCell(boardStore.cellStoreList[6]),
            createCell(boardStore.cellStoreList[7]),
            createCell(boardStore.cellStoreList[8]),
          ]),
          TableRow(children: [
            createCell(boardStore.cellStoreList[9]),
            createCell(boardStore.cellStoreList[10]),
            createCell(boardStore.cellStoreList[11]),
            createCell(boardStore.cellStoreList[12]),
            createCell(boardStore.cellStoreList[13]),
            createCell(boardStore.cellStoreList[14]),
            createCell(boardStore.cellStoreList[15]),
            createCell(boardStore.cellStoreList[16]),
            createCell(boardStore.cellStoreList[17]),
          ]),
          TableRow(children: [
            createCell(boardStore.cellStoreList[18]),
            createCell(boardStore.cellStoreList[19]),
            createCell(boardStore.cellStoreList[20]),
            createCell(boardStore.cellStoreList[21]),
            createCell(boardStore.cellStoreList[22]),
            createCell(boardStore.cellStoreList[23]),
            createCell(boardStore.cellStoreList[24]),
            createCell(boardStore.cellStoreList[25]),
            createCell(boardStore.cellStoreList[26]),
          ]),
          TableRow(children: [
            createCell(boardStore.cellStoreList[27]),
            createCell(boardStore.cellStoreList[28]),
            createCell(boardStore.cellStoreList[29]),
            createCell(boardStore.cellStoreList[30]),
            createCell(boardStore.cellStoreList[31]),
            createCell(boardStore.cellStoreList[32]),
            createCell(boardStore.cellStoreList[33]),
            createCell(boardStore.cellStoreList[34]),
            createCell(boardStore.cellStoreList[35]),
          ]),
          TableRow(children: [
            createCell(boardStore.cellStoreList[36]),
            createCell(boardStore.cellStoreList[37]),
            createCell(boardStore.cellStoreList[38]),
            createCell(boardStore.cellStoreList[39]),
            createCell(boardStore.cellStoreList[40]),
            createCell(boardStore.cellStoreList[41]),
            createCell(boardStore.cellStoreList[42]),
            createCell(boardStore.cellStoreList[43]),
            createCell(boardStore.cellStoreList[44]),
          ]),
          TableRow(children: [
            createCell(boardStore.cellStoreList[45]),
            createCell(boardStore.cellStoreList[46]),
            createCell(boardStore.cellStoreList[47]),
            createCell(boardStore.cellStoreList[48]),
            createCell(boardStore.cellStoreList[49]),
            createCell(boardStore.cellStoreList[50]),
            createCell(boardStore.cellStoreList[51]),
            createCell(boardStore.cellStoreList[52]),
            createCell(boardStore.cellStoreList[53]),
          ]),
          TableRow(children: [
            createCell(boardStore.cellStoreList[54]),
            createCell(boardStore.cellStoreList[55]),
            createCell(boardStore.cellStoreList[56]),
            createCell(boardStore.cellStoreList[57]),
            createCell(boardStore.cellStoreList[58]),
            createCell(boardStore.cellStoreList[59]),
            createCell(boardStore.cellStoreList[60]),
            createCell(boardStore.cellStoreList[61]),
            createCell(boardStore.cellStoreList[62]),
          ]),
          TableRow(children: [
            createCell(boardStore.cellStoreList[63]),
            createCell(boardStore.cellStoreList[64]),
            createCell(boardStore.cellStoreList[65]),
            createCell(boardStore.cellStoreList[66]),
            createCell(boardStore.cellStoreList[67]),
            createCell(boardStore.cellStoreList[68]),
            createCell(boardStore.cellStoreList[69]),
            createCell(boardStore.cellStoreList[70]),
            createCell(boardStore.cellStoreList[71]),
          ]),
          TableRow(children: [
            createCell(boardStore.cellStoreList[72]),
            createCell(boardStore.cellStoreList[73]),
            createCell(boardStore.cellStoreList[74]),
            createCell(boardStore.cellStoreList[75]),
            createCell(boardStore.cellStoreList[76]),
            createCell(boardStore.cellStoreList[77]),
            createCell(boardStore.cellStoreList[78]),
            createCell(boardStore.cellStoreList[79]),
            createCell(boardStore.cellStoreList[80]),
          ]),
        ]),
      ),
    );
  }
  createCell(CellStore cellStore){
    return Cell(cellStore,boardStore.selectedCell, this.onCellSelected);
  }
  onCellSelected(CellStore cellStore){
    boardStore.selectCell(cellStore);
  }
}
