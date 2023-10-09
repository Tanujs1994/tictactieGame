// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TicTakToeCart extends StatelessWidget {
  String whatToShow = '';

  final Function(int) iWasClicked;
  int index;

  TicTakToeCart({
    super.key,
    required this.whatToShow,
    required this.index,
    required this.iWasClicked,
  });

  @override
  Widget build(BuildContext context) {
    var bgColor = Color(0xffAE445A);
    if (whatToShow == 'X') {
      bgColor = Color(0xffAE445A);
    } else if (whatToShow == '0') {
      bgColor =  Color(0xffF39F5A);
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        InkWell(
          onTap: () {
            if (whatToShow.isEmpty) {
              iWasClicked(index);
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 100,
            width: 100,
          ),
        ),
        Text(
          whatToShow,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ],
    );
  }
}
