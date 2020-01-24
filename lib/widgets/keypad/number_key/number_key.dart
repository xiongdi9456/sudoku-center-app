import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberKey extends StatelessWidget {
  final int value;
  const NumberKey(this.value);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlineButton(
        child:Text(this.value.toString()),
        onPressed: onButtonPressed(),
      )
    );
  }
  onButtonPressed(){
    //on button pressed
  }
}