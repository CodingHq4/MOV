import 'package:flutter/material.dart';
import 'package:mov/view/onboarding/intro_screen/intro_screen.dart';

void main() {
  runApp(Mov());
}

class Mov extends StatelessWidget {
  const Mov({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffFFFDF6),
      ),
      home: IntroScreen(),
    );
  }
}
