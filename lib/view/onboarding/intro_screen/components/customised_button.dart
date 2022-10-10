import 'package:flutter/material.dart';
import 'package:mov/constants.dart';

class CustomisedButton extends StatelessWidget {
  CustomisedButton({
    required this.onPressed,
    required this.title,
    required this.textColor,
    required this.buttonColor,
  });
  final Function() onPressed;
  final String title;
  final Color buttonColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 29,
      minWidth: 82,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      color: buttonColor,
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}
