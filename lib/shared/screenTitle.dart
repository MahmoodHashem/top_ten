
import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {

  final text;

  const ScreenTitle({Key? key, this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
            text,
      style: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      )

    );
  }
}