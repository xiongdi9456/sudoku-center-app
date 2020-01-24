import 'package:flutter/material.dart';
import 'package:sudoko/widgets/keypad/keypad.dart';
import './widgets/cell/cell_store.dart';
import './widgets/board/board.dart';

final cellStore = CellStore(0,0,0);
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'soduku center',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('soduko center'),
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Board(),
                Expanded(child:Keypad()),
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cellStore.setValue(cellStore.value + 1);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
