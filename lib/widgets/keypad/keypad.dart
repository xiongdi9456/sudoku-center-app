import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sudoko/widgets/keypad/number_key/number_key.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
];

List<Widget> _tiles = const <Widget>[
   const NumberKey(1),
   const NumberKey(2),
   const NumberKey(3),
   const NumberKey(4),
   const NumberKey(5),
   const NumberKey(6),
   const NumberKey(7),
   const NumberKey(8),
   const NumberKey(9),
   const NumberKey(0),
];

class Keypad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: buildGridView());
  }

  StaggeredGridView buildGridView() {
    return new StaggeredGridView.count(
    crossAxisCount: 5,
    staggeredTiles: _staggeredTiles,
    children: _tiles,
    mainAxisSpacing: 4.0,
    crossAxisSpacing: 4.0,
    padding: const EdgeInsets.all(4.0),
  );
  }
}
