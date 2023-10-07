// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TicTakToeCart extends StatelessWidget {
  const TicTakToeCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.lightGreenAccent,
        ),
        Text(
          'X',
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
