import 'package:flutter/material.dart';
import 'package:sudoko/screens/game/game.dart';
import 'app_store.dart';

void main() => runApp(MyApp());
final appStore = new AppStore();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'soduku center',
      theme: getThemeData(appStore.isDarkMode),
      home: MyHomePage(appStore: appStore),
    );
  }

  getThemeData(bool isDarkMode) {
    if (isDarkMode) {
      return ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          fontFamily: 'Sumsung-sharp-sans');
    } else {
      return ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          fontFamily: 'Sumsung-sharp-sans');
    }
  }
}
