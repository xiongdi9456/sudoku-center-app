import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
      child: Observer(
        builder: (_) => StaggeredGridView.countBuilder(
          crossAxisCount: 9,
          itemCount: 81,
          itemBuilder: (BuildContext context, int index) =>
              createCell(boardStore.cellStoreList[index]),
          staggeredTileBuilder: (int index) => new StaggeredTile.count(1, 1),
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 0.0,
        ),
      ),
    );
  }

  createCell(CellStore cellStore) {
    return Observer(
        builder: (_) =>
            Cell(cellStore, boardStore.selectedCell, this.onCellSelected));
  }

  onCellSelected(CellStore cellStore) {
    boardStore.selectCell(cellStore);
  }
}
