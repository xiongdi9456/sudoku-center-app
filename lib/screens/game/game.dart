import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sudoko/widgets/board/board.dart';
import 'package:sudoko/widgets/drawer/drawer.dart';
import 'package:sudoko/widgets/header/header.dart';
import 'package:sudoko/widgets/keypad/keypad.dart';
import 'game_store.dart';

final gameStore = new GameStore();

class MyHomePage extends StatelessWidget {
  final GlobalKey scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      drawer: Observer(
        builder: (_) => Drawer(
            child: GameDrawer(
          setDarkMode: gameStore.setDarkMode,
          isDarkMode: gameStore.isDarkMode,
        )),
      ),
      backgroundColor: Color(0xFFfdfdfd),
      key: scaffoldKey,
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Header(),
              Flexible(
                child: AspectRatio(
                  child: Board(gameStore.boardStore),
                  aspectRatio: 1,
                ),
                flex: 2,
              ),
              Flexible(
                  child: Keypad(
                onNumberKeyTapped: this.onNumberKeyTapped,
                onEraseKeyTapped: this.onEraseKeyTapped,
                onHintKeyTapped: this.onHintKeyTapped,
                onNoteKeyTapped: this.onNotesKeyTapped,
                onResetKeyTapped: this.onResetKeyTapped,
                onUndoKeyTapped: this.onUndoKeyTapped,
              )),
            ],
          ),
        )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  onNumberKeyTapped(int value) {
    if (gameStore.boardStore.isNoteMode) {
      gameStore.boardStore.toggleSelectedCellNote(value);
    } else {
      gameStore.boardStore.editSelectedCellValue(value);
    }
  }

  onResetKeyTapped() {}
  onHintKeyTapped() {}
  onEraseKeyTapped() {
    //todo check if the vaalue is not initialized by app
    this.onNumberKeyTapped(0);
  }

  onNotesKeyTapped() {
    gameStore.boardStore.toggleNoteMode();
  }

  onUndoKeyTapped() {}
}
