import 'dart:math';

class SudokoHelper{
  var matrix = new List.generate(9, (_)=>new List.generate(9, (_)=>0));
  void createBoard(){
    for(int i=0 ; i<9; i++){
      for(int j=0 ; j<9; j++){
        this.matrix[i][j] = this.createRandomNumber(0, 9);
      }
    }
  }
  int createRandomNumber(int min, int max){
    var rnd = new Random();
    int number = min + rnd.nextInt(max - min);
    return number;
  }
}