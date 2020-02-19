import 'dart:ui';



class CellTheme{
  Color background;
  Color selectedBackground;
  Color setteldBackground;// when a cell value is consistant and putted by AI
  Color selectedColumnRowBackground; // when user select and focus on a cell we highlight its row and col
  Color textColor;
  Color setteldTextColor; // text color of AI constant putted cell number
  Color wrongAnswerTextColor;
  CellTheme({
    this.background,
    this.selectedBackground,
    this.setteldBackground,
    this.selectedColumnRowBackground,
    this.textColor,
    this.setteldTextColor,
    this.wrongAnswerTextColor});
}
class ThemeBase{
  CellTheme cell;
  ThemeBase({this.cell});
}