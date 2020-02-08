import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberKey extends StatelessWidget {
  final int value;
  final void Function(int value) onNumberKeyTapped;

  const NumberKey(this.value, this.onNumberKeyTapped);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
      child: Container(
        child: Center(child: Text(this.value.toString())),
        width: 36.0,
        height: 36.0,
        decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.all(Radius.circular(9)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(23, 0, 0, 0),
                blurRadius: 15,
                offset: Offset(2, 6),
                spreadRadius: 0
              )
            ]),
      ),
      onTap: onButtonPressed,
    ));
  }

  onButtonPressed() {
    //on button pressed
    this.onNumberKeyTapped(this.value);
  }
}
