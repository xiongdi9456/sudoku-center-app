import 'dart:ui';

import 'package:mobx/mobx.dart';
import 'package:sudoko/stores/themes/theme_base.dart';
part 'app_theme.g.dart';

class AppTheme = _AppTheme with _$AppTheme;
abstract class _AppTheme with Store{
  _AppTheme();

  ThemeBase _darkTheme = new ThemeBase(cell: new CellTheme(
    background: Color(0xFF121123),
    selectedBackground: Color(0xFF1A2733),
    selectedColumnRowBackground: Color(0xFF16142C),
    setteldBackground: Color(0xFF1F1E32),
    setteldTextColor: Color(0xFFB8B3F0),
    textColor: Color(0xFF3BC995),
    wrongAnswerTextColor: Color(0xFFD20A16)
  ));
    ThemeBase _lightTheme = new ThemeBase(cell: new CellTheme(
    background: Color(0xFFFDFDFD),
    selectedBackground: Color(0xFFEEFCF7),
    selectedColumnRowBackground: Color.fromARGB(255, 238, 239, 242),
    setteldBackground: Color(0xFFF5F6F6),
    setteldTextColor: Color(0xFF8DA1AE),
    textColor: Color(0xFF0B0A1C),
    wrongAnswerTextColor: Color(0xD20A16)
  ));
  @observable
  bool isDarkMode = false;

  @computed
  ThemeBase get theme{
    if(this.isDarkMode){
      return this._darkTheme;
    }else{
      return this._lightTheme;
    }
  }
  @action 
  setDarkMode(bool value){
    Future.delayed(Duration.zero, () => this.isDarkMode = value);
    
  }
}