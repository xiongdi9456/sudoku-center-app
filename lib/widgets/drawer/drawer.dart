import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';

class GameDrawer extends StatelessWidget {
  final void Function(bool value) setDarkMode;
  final bool isDarkMode;
  GameDrawer({this.setDarkMode, this.isDarkMode});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SvgPicture.asset('assets/images/logo.svg'),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Dark Theme'),
                  Switch(
                    value: isDarkMode,
                    onChanged: (value){this.onDarkModeChanged(value,context);},
                    activeColor: Theme.of(context).backgroundColor,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  onDarkModeChanged(newValue,context){
    Navigator.pop(context);
    this.setDarkMode(newValue);
  }
}
