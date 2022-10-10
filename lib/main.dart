import 'package:flutter/material.dart';
import 'package:mov/constants.dart';
import 'package:mov/view/onboarding/intro_screen/intro_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(milliseconds: 200));
  runApp(const Mov());
}

class Mov extends StatelessWidget {
  const Mov({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffFFFDF6),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: kSecondaryColor,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xffFFFDF6),
          )),
      home: const IntroScreen(),
    );
  }
}
