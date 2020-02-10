import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionKey extends StatelessWidget {
  final Widget iconWidget;
  final Function() onTap;
  final String title;
  const ActionKey({this.iconWidget, this.onTap, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
      child: Container(
        child: Center(
            child: Column(
          children: <Widget>[
            Flexible(child:this.iconWidget),
            Text(
              this.title,
              style: TextStyle(fontSize: 8.0, color: Color(0xFF1F9CC3)),
            )
          ],
        )),
        width: 36.0,
        height: 36.0,
      ),
      onTap: this.onButtonPressed,
    ));
  }

  onButtonPressed() {
    //on button pressed
    this.onTap();
  }
}
