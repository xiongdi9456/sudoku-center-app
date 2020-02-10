import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class NoteCell extends StatelessWidget {
  static TextStyle textStyle = TextStyle(fontSize: 8.0);
  final List<bool> notes;
  NoteCell({this.notes});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Table(children: [
      TableRow(children: [
        getCell(1),
        getCell(2),
        getCell(3),
      ]),
      TableRow(children: [
        getCell(4),
        getCell(5),
        getCell(6),
      ]),
      TableRow(children: [
        getCell(7),
        getCell(8),
        getCell(9),
      ]),
    ]));
  }

  Widget getCell(int value) {
    return Center(
        child: Observer(
            builder: (_) => Text(notes[value] ? value.toString() : '',
                style: NoteCell.textStyle)));
  }
}
