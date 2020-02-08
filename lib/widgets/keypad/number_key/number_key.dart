import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sudoko/widgets/keypad/custom_button/custom_button.dart';

class NumberKey extends StatelessWidget {
  final int value;
  final void Function(int value) onNumberKeyTapped;

  const NumberKey(this.value, this.onNumberKeyTapped);
  @override
  Widget build(BuildContext context) {
    return CustomButton(child: Text(value.toString()),
    onTap: this.onButtonPressed,
    value: this.value,
    );
  }

  onButtonPressed(value) {
    //on button pressed
    this.onNumberKeyTapped(value);
  }
}
