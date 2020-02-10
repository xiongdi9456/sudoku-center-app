import 'package:flutter/material.dart';
import 'package:sudoko/screens/game/game_store.dart';
import 'package:sudoko/widgets/keypad/keypad.dart';
import './widgets/cell/cell_store.dart';
import './widgets/board/board.dart';

final cellStore = CellStore(0, 0, 0, 0);
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'soduku center',
      theme: ThemeData(
          primarySwatch: Colors.blue, fontFamily: 'Sumsung-sharp-sans'),
      home: MyHomePage(),
    );
  }
}

final gameStore = new GameStore();

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Color(0xFFfdfdfd),
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Flexible(
                child: AspectRatio(
                  child: Board(gameStore.boardStore),
                  aspectRatio: 1,
                ),
                flex: 2,
              ),
              Flexible(
                  child: Keypad(onNumberKeyTapped: this.onNumberKeyTapped,onEraseKeyTapped: this.onEraseKeyTapped,onHintKeyTapped: this.onHintKeyTapped, onNoteKeyTapped: this.onNotesKeyTapped, onResetKeyTapped: this.onResetKeyTapped, onUndoKeyTapped: this.onUndoKeyTapped,)),
            ],
          ),
        )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  onNumberKeyTapped(int value) {
    gameStore.boardStore.editSelectedCellValue(value);
  }
  onResetKeyTapped(){

  }
  onHintKeyTapped(){

  }
  onEraseKeyTapped(){

  }
  onNotesKeyTapped(){

  }
  onUndoKeyTapped(){

  }
}
