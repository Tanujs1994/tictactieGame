// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
 
// ignore: must_be_immutable
class TicTakToeCart extends StatelessWidget {
  String whatToShow = '';

  final Function(int) iWasClicked;
  int index;

  TicTakToeCart(
      {super.key,
      required this.whatToShow,
      required this.index,
      required this.iWasClicked,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        InkWell(
          onTap: () {
            iWasClicked(index);
          },
          child: Container(
            height: 100,
            width: 100,
            color: Colors.lightGreenAccent,
          ),
        ),
        Text(
          whatToShow, 
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
