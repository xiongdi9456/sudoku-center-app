import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sudoko/widgets/keypad/custom_button/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkipKey extends StatelessWidget {
  final int value;
  final void Function(int value) onNumberKeyTapped;

  const SkipKey(this.value, this.onNumberKeyTapped);
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      child: SvgPicture.asset('assets/images/skip.svg'),
      onTap: this.onButtonPressed,
      value: this.value,
    );
  }

  onButtonPressed(value) {
    //on button pressed
    this.onNumberKeyTapped(value);
  }
}
