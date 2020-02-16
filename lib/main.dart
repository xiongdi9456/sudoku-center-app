import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:sudoko/screens/game/game.dart';
import 'app_store.dart';

final appStore = new AppStore();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  MyApp() {
    reaction((_) => appStore.isDarkMode, this.changeTheme);
  }
  @override
  Widget build(BuildContext context) {

    return Observer(builder: (_){
    return MaterialApp(
        title: 'soduku center',
        theme: appStore.isDarkMode?getTheme(appStore.isDarkMode):getTheme(appStore.isDarkMode),
        home: MyHomePage(appStore: appStore),
      );
    });

  }

  changeTheme(isDarkMode) {
    print(isDarkMode);
  }

  ThemeData getTheme(isDarkMode){
    if (appStore.isDarkMode) {
      return ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          backgroundColor: Color(0xFF1F1E32),
          fontFamily: 'Sumsung-sharp-sans');
    } else {
      return ThemeData(
          brightness: Brightness.light,
          backgroundColor: Color(0xFFfdfdfd),
          primarySwatch: Colors.blue,
          fontFamily: 'Sumsung-sharp-sans');
    }
  }
}
