import 'package:mobx/mobx.dart';
import 'package:sudoko/widgets/board/board_store.dart';
part 'game_store.g.dart';

class GameStore = _GameStore with _$GameStore;
abstract class _GameStore with Store{
  _GameStore();

  @observable
  BoardStore boardStore = new BoardStore();

  @observable
  bool isDarkMode = false;

  @action 
  setDarkMode(bool value){
    this.isDarkMode = value;
  }
}