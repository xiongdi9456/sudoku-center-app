import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 50.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            children: <Widget>[
              GestureDetector(
                child: SvgPicture.asset('assets/images/icn_Menu.svg'),
                onTap:(){this.onMenuTap(context);} ,
                ),
              SvgPicture.asset('assets/images/logo.svg'),
            ],
          ),
        ),
      ),
    );
  }
  onMenuTap(context){
    var scaffoldState = Scaffold.of(context);
    scaffoldState.openDrawer();
  }
}
