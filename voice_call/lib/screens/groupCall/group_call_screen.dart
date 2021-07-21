import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voice_call/components/rounded_button.dart';
import 'package:voice_call/constants.dart';
import 'package:voice_call/size_config.dart';

import 'components/body.dart';

class GroupCallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      backgroundColor: kBackgroundColor,
      body: Body(),
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/Icon Back.svg',
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(icon: SvgPicture.asset('assets/icons/Icon User.svg',height: 24,), onPressed: (){}),
      ],
    );
  }

  Container buildBottomNavBar() {
    return Container(
      color: kBackgroundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              RoundedButton(
                size: 48,
                iconSrc: 'assets/icons/Icon Close.svg',
                color: kRedColor,
                iconColor: Colors.white,
                press: () {},
              ),
              Spacer(
                flex: 3,
              ),
              RoundedButton(
                size: 48,
                iconSrc: 'assets/icons/Icon Volume.svg',
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                press: () {},
              ),
              Spacer(),
              RoundedButton(
                size: 48,
                iconSrc: 'assets/icons/Icon Mic.svg',
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                press: () {},
              ),
              Spacer(),
              RoundedButton(
                size: 48,
                iconSrc: 'assets/icons/Icon Video.svg',
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                press: () {},
              ),
              Spacer(),
              RoundedButton(
                size: 48,
                iconSrc: 'assets/icons/Icon Repeat.svg',
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
