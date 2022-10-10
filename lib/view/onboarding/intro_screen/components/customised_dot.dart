import 'package:flutter/material.dart';

class CustomisedDot extends StatelessWidget {
  CustomisedDot({required this.color});
  Color color;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundColor: color, radius: 6);
  }
}
