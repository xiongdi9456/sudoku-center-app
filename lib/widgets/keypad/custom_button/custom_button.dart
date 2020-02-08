import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Function(dynamic value) onTap;
  final value;
  const CustomButton({this.child, this.onTap, this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
      child: Container(
        child: Center(child: this.child),
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
      onTap: this.onButtonPressed,
    ));
  }

  onButtonPressed() {
    //on button pressed
    this.onTap(this.value);
  }
}
