import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    this.size = 64,
    @required this.iconSrc,
    @required this.color,
    @required this.iconColor,
    @required this.press,
  }) : super(key: key);
  final double size;
  final String iconSrc;
  final Color color, iconColor;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidht(size),
      width: getProportionateScreenWidht(size),
      child: FlatButton(
        onPressed: press,
        padding: EdgeInsets.all(15/ 64 * size),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        color: color,
        child: SvgPicture.asset(
          iconSrc,
          color: iconColor,
        ),
      ),
    );
  }
}
