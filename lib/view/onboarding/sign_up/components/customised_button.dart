import 'package:flutter/material.dart';

class CustomisedAuthButton extends StatelessWidget {
  CustomisedAuthButton({required this.onPressed, required this.text});

  final Function() onPressed;

  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FlatButton(
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      color: Colors.black,
      // height: 62,
      // height: size.height * 0.09,
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
