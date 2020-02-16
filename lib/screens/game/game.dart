import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sudoko/app_store.dart';
import 'package:sudoko/widgets/board/board.dart';
import 'package:sudoko/widgets/drawer/drawer.dart';
import 'package:sudoko/widgets/header/header.dart';
import 'package:sudoko/widgets/keypad/keypad.dart';

class MyHomePage extends StatelessWidget {
  final GlobalKey scaffoldKey = new GlobalKey();
  final AppStore appStore;
  MyHomePage({this.appStore});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      drawer: Observer(
        builder: (_) => Drawer(
            child: GameDrawer(
          setDarkMode: appStore.setDarkMode,
          isDarkMode: appStore.isDarkMode,
        )),
      ),
      backgroundColor:  Theme.of(context).backgroundColor,
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
                  child: Board(appStore.gameStore.boardStore),
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
    if (appStore.gameStore.boardStore.isNoteMode) {
      appStore.gameStore.boardStore.toggleSelectedCellNote(value);
    } else {
      appStore.gameStore.boardStore.editSelectedCellValue(value);
    }
  }

  onResetKeyTapped() {}
  onHintKeyTapped() {}
  onEraseKeyTapped() {
    //todo check if the vaalue is not initialized by app
    this.onNumberKeyTapped(0);
  }

  onNotesKeyTapped() {
    appStore.gameStore.boardStore.toggleNoteMode();
  }

  onUndoKeyTapped() {}
}
