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
          child: SvgPicture.asset('assets/images/logo.svg'),
        ),
      ),
    );
  }
}
