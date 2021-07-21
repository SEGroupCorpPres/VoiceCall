import 'package:flutter/material.dart';
import 'package:voice_call/components/rounded_button.dart';
import 'package:voice_call/constants.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/full_image.png',
          fit: BoxFit.cover,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Anaxon \nRustamova',
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(color: Colors.white),
                ),
                VerticalSpacing(of: 10),
                Text(
                  'Incoming 00:01'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RoundedButton(color: Colors.white,  iconColor: Colors.black, iconSrc: 'assets/icons/Icon Mic.svg', press: () {  },),
                    RoundedButton(color: kRedColor,  iconColor: Colors.white, iconSrc: 'assets/icons/call_end.svg', press: () {  },),
                    RoundedButton(color: Colors.white,  iconColor: Colors.black, iconSrc: 'assets/icons/Icon Volume.svg', press: () {  },),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

