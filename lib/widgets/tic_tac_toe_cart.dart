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
    var bgColor = Colors.blueGrey;
    if (whatToShow == 'X'){
      bgColor = Colors.red;
    }else if (whatToShow == '0') {
      bgColor = Colors.yellow;
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
            height: 100,
            width: 100,
            color:bgColor,
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
