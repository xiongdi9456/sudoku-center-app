import 'package:flutter/material.dart';
import 'package:sudoko/screens/game/game.dart';

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
