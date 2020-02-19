import 'package:mobx/mobx.dart';
import 'package:sudoko/screens/game/game_store.dart';
import 'package:sudoko/stores/themes/app_theme.dart';
part 'app_store.g.dart';

class AppStore = _AppStore with _$AppStore;
abstract class _AppStore with Store{
  _AppStore();

  @observable
  GameStore gameStore = new GameStore();

  AppTheme appTheme = new AppTheme();
}