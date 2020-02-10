import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sudoko/widgets/keypad/action_key/action_key.dart';
import 'package:sudoko/widgets/keypad/number_key/number_key.dart';
import 'package:sudoko/widgets/keypad/pause_key/pause_key.dart';

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
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
];

class Keypad extends StatelessWidget {
  final void Function(int value) onNumberKeyTapped;
  final void Function() onResetKeyTapped;
  final void Function() onHintKeyTapped;
  final void Function() onNoteKeyTapped;
  final void Function() onUndoKeyTapped;
  final void Function() onEraseKeyTapped;

  const Keypad({this.onNumberKeyTapped, this.onResetKeyTapped, this.onHintKeyTapped, this.onNoteKeyTapped, this.onUndoKeyTapped, this.onEraseKeyTapped});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 0.16),
      child: Center(child: buildGridView()),
    ));
  }

  List<Widget> getButtonList() {
    return <Widget>[
      ActionKey(
        iconWidget: SvgPicture.asset('assets/images/icn_Restart.svg'),
        onTap: this.onResetKeyTapped,
        title: 'Restart',
      ),
      ActionKey(
        iconWidget: SvgPicture.asset('assets/images/icn_Hint.svg'),
        onTap: this.onResetKeyTapped,
        title: 'Hint',
      ),
      ActionKey(
        iconWidget: SvgPicture.asset('assets/images/icn_Note.svg'),
        onTap: this.onResetKeyTapped,
        title: 'Note',
      ),
      ActionKey(
        iconWidget: SvgPicture.asset('assets/images/icn_Undo.svg'),
        onTap: this.onResetKeyTapped,
        title: 'Undo',
      ),
      ActionKey(
        iconWidget: SvgPicture.asset('assets/images/icn_Erase.svg'),
        onTap: this.onResetKeyTapped,
        title: 'Erase',
      ),
      NumberKey(1, this.onNumberKeyTapped),
      NumberKey(2, this.onNumberKeyTapped),
      NumberKey(3, this.onNumberKeyTapped),
      NumberKey(4, this.onNumberKeyTapped),
      NumberKey(5, this.onNumberKeyTapped),
      NumberKey(6, this.onNumberKeyTapped),
      NumberKey(7, this.onNumberKeyTapped),
      NumberKey(8, this.onNumberKeyTapped),
      NumberKey(9, this.onNumberKeyTapped),
      PauseKey(0, this.onNumberKeyTapped),
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
