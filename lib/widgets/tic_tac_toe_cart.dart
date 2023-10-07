// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TicTakToeCart extends StatefulWidget {
  const TicTakToeCart({super.key});

  @override
  State<TicTakToeCart> createState() => _TicTakToeCartState();
}

class _TicTakToeCartState extends State<TicTakToeCart> {
  var ShowSymbol = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              ShowSymbol = true;
            });
          },
          child: Container(
            height: 100,
            width: 100,
            color: Colors.lightGreenAccent,
          ),
        ),
        if (ShowSymbol)
          Text(
            'X',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
      ],
    );
  }
}
