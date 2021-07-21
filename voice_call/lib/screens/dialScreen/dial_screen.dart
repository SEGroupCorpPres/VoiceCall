import 'package:flutter/material.dart';
import 'package:voice_call/constants.dart';

import '../../size_config.dart';
import 'components/body.dart';

class DialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Body(),
    );
  }
}
