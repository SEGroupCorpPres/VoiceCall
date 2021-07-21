import 'package:flutter/material.dart';
import 'package:voice_call/screens/dialScreen/dial_Screen.dart';
import 'package:voice_call/screens/groupCall/group_call_screen.dart';

import 'screens/audioCallWithImage/audio_call_with_image_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GroupCallScreen(),
    );
  }
}

