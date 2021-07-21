import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:voice_call/components/dial_user_pictures.dart';
import 'package:voice_call/components/rounded_button.dart';
import 'package:voice_call/constants.dart';
import 'package:voice_call/size_config.dart';

import 'dial_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Anna Wiliams',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white),
            ),
            Text(
              'Calling...',
              style: TextStyle(color: Colors.white60),
            ),
            VerticalSpacing(),
            DialUserPic(
              image: 'assets/images/calling_face.png',
            ),
            Spacer(),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                DialButton(
                  iconSrc: 'assets/icons/Icon Mic.svg',
                  press: () {},
                  text: 'Audio',
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon Volume.svg',
                  press: () {},
                  text: 'Microphone',
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon Video.svg',
                  press: () {},
                  text: 'Video',
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon Message.svg',
                  press: () {},
                  text: 'Message',
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon User.svg',
                  press: () {},
                  text: 'Add contact',
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon Voicemail.svg',
                  press: () {},
                  text: 'Voice mail',
                ),
              ],
            ),
            VerticalSpacing(),
            RoundedButton(iconSrc: 'assets/icons/call_end.svg', color: kRedColor, iconColor: Colors.white, press: () {}),
          ],
        ),
      ),
    );
  }
}
