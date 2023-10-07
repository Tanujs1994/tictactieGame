// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tic_tac_toe_game/widgets/tic_tac_toe_cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // debugPaintSizeEnabled = true;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tic Tac Toe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> allCells = ["", "", "", "", "", "", "", "", "", ""];
  bool isOdd = true;

  void ACellWasClicked(int idx) {
    print('user clicked on cell $idx');
    setState(() {
      if (isOdd) {
        allCells[idx] = "X";
        isOdd = false;
      } else {
        isOdd = true;
        allCells[idx] = "0";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TicTakToeCart(
                        whatToShow: allCells[1],
                        index: 1,
                        iWasClicked: ACellWasClicked,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TicTakToeCart(
                        whatToShow: allCells[2],
                        index: 2,
                        iWasClicked: ACellWasClicked,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TicTakToeCart(
                        whatToShow: allCells[3],
                        index: 3,
                        iWasClicked: ACellWasClicked,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TicTakToeCart(
                        whatToShow: allCells[4],
                        index: 4,
                        iWasClicked: ACellWasClicked,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TicTakToeCart(
                        whatToShow: allCells[5],
                        index: 5,
                        iWasClicked: ACellWasClicked,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TicTakToeCart(
                        whatToShow: allCells[6],
                        index: 6,
                        iWasClicked: ACellWasClicked,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TicTakToeCart(
                        whatToShow: allCells[7],
                        index: 7,
                        iWasClicked: ACellWasClicked,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TicTakToeCart(
                        whatToShow: allCells[8],
                        index: 8,
                        iWasClicked: ACellWasClicked,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TicTakToeCart(
                        whatToShow: allCells[9],
                        index: 9,
                        iWasClicked: ACellWasClicked,
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          allCells = ["", "", "", "", "", "", "", "", "", ""];
                        });
                      },
                      child: Text('Restart'))
                ],
              )
            ],
          ),
        ));
  }
}
