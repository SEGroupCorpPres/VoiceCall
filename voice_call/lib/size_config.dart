import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidht;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidht = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 896.0) * screenHeight;
}

double getProportionateScreenWidht(double inputWidht) {
  double screenWidht = SizeConfig.screenWidht;
  return (inputWidht / 414.0) * screenWidht;
}

class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing({Key key, this.of = 20}) : super(key: key);

  final double of;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: getProportionateScreenWidht(of));
  }
}

class HorizontalSpacing extends StatelessWidget {
  const HorizontalSpacing({Key key, this.of = 20}) : super(key: key);
  final double of;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: getProportionateScreenWidht(of),);
  }
}
