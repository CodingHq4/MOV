import 'package:flutter/material.dart';
import 'package:mov/constants.dart';

class CustomisedButton extends StatelessWidget {
  CustomisedButton({required this.onPressed, required this.title});
  final Function() onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 29,
      minWidth: 82,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      color: kPrimaryColor,
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
