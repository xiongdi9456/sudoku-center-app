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



class Keypad extends StatelessWidget {
  final void Function(int value) onNumberKeyTapped;
  const Keypad({this.onNumberKeyTapped});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,16.0,0,0.16),
          child: Center(child: buildGridView()),
        ));
  }
  List<Widget> getButtonList(){
    return <Widget>[
       NumberKey(1, this.onNumberKeyTapped),
       NumberKey(2, this.onNumberKeyTapped),
       NumberKey(3, this.onNumberKeyTapped),
       NumberKey(4, this.onNumberKeyTapped),
       NumberKey(5, this.onNumberKeyTapped),
       NumberKey(6, this.onNumberKeyTapped),
       NumberKey(7, this.onNumberKeyTapped),
       NumberKey(8, this.onNumberKeyTapped),
       NumberKey(9, this.onNumberKeyTapped),
    ];
  }
  StaggeredGridView buildGridView() {
    return new StaggeredGridView.count(
    crossAxisCount: 5,
    staggeredTiles: _staggeredTiles,
    children: getButtonList(),
    mainAxisSpacing: 16.0,
    crossAxisSpacing: 16.0,
    padding: const EdgeInsets.all(4.0),
  );
  }
}
