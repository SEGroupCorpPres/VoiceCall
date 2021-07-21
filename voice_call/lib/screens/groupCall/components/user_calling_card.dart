import 'package:flutter/material.dart';
import 'package:voice_call/components/dial_user_pictures.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class UserCallingCard extends StatelessWidget {
  const UserCallingCard({
    Key key,
    @required this.image,
    @required this.name,
  }) : super(key: key);
  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DialUserPic(
            image: image,
            size: 112,
          ),
          VerticalSpacing(of: 10),
          Text(name,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              )),
          VerticalSpacing(of: 5),
          Text(
            'Calling...',
            style: TextStyle(color: Colors.white60),
          )
        ],
      ),
    );
  }
}