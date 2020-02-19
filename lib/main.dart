import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:sudoko/screens/game/game.dart';
import 'package:sudoko/stores/app_store.dart';

final appStore = new AppStore();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  MyApp() {
    reaction((_) => appStore.appTheme.isDarkMode, this.changeTheme);
  }
  @override
  Widget build(BuildContext context) {

    return Observer(builder: (_){
    return MaterialApp(
        title: 'soduku center',
        theme: appStore.appTheme.isDarkMode?getTheme(appStore.appTheme.isDarkMode):getTheme(appStore.appTheme.isDarkMode),
        home: MyHomePage(appStore: appStore),
      );
    });

  }

  changeTheme(isDarkMode) {
    print(isDarkMode);
  }

  ThemeData getTheme(isDarkMode){
    if (appStore.appTheme.isDarkMode) {
      return ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          backgroundColor: Color(0xFF1F1E32),
          canvasColor:  Color(0xFF1F1E32),
          fontFamily: 'Sumsung-sharp-sans');
    } else {
      return ThemeData(
          brightness: Brightness.light,
          backgroundColor: Color(0xFFfdfdfd),
          canvasColor:  Color(0xFFE1E3E3),
          primarySwatch: Colors.blue,
          fontFamily: 'Sumsung-sharp-sans');
    }
  }
}
