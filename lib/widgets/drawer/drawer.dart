import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class GameDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset('assets/images/logo.svg'),
          ),
        ),
      ],
    );
  }
}
