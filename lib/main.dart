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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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
  var whosTurnNext = 'X';

  void ACellWasClicked(int idx) {
    print('user clicked on cell $idx');
    setState(() {
      if (isOdd) {
        whosTurnNext = "0";
        allCells[idx] = "X";
        isOdd = false;
      } else {
        whosTurnNext = 'X';
        isOdd = true;
        allCells[idx] = "0";
      } 
    });
    XWins();
    ZeroWins();
    MatchDraw();
  }

  void XWins() {
    if (allCells[1] == allCells[2] &&
        allCells[2] == allCells[3] &&
        allCells[1] == 'X') {
      print('X Wins');
      ShowXWonDialog();
    } else if (allCells[4] == allCells[5] &&
        allCells[5] == allCells[6] &&
        allCells[4] == 'X') {
      print('X Wins');
      ShowXWonDialog();
    } else if (allCells[7] == allCells[8] &&
        allCells[8] == allCells[9] &&
        allCells[7] == 'X') {
      print('X Wins');
      ShowXWonDialog();
    } else if (allCells[1] == allCells[4] &&
        allCells[4] == allCells[7] &&
        allCells[1] == "X") {
      print('X Wins');
      ShowXWonDialog();
    } else if (allCells[2] == allCells[5] &&
        allCells[5] == allCells[8] &&
        allCells[2] == 'X') {
      print('X Wins');
      ShowXWonDialog();
    } else if (allCells[3] == allCells[6] &&
        allCells[6] == allCells[9] &&
        allCells[3] == 'X') {
      print('X Wins');
      ShowXWonDialog();
    } else if (allCells[1] == allCells[5] &&
        allCells[5] == allCells[9] &&
        allCells[1] == 'X') {
      print('X Wins');
      ShowXWonDialog();
    } else if (allCells[3] == allCells[5] &&
        allCells[5] == allCells[7] &&
        allCells[3] == 'X') {
      print('X Wins');
      ShowXWonDialog();
    }
  }

  void ZeroWins() {
    if (allCells[1] == allCells[2] &&
        allCells[2] == allCells[3] &&
        allCells[1] == '0') {
      ShowZeroWonDialog();
    } else if (allCells[4] == allCells[5] &&
        allCells[5] == allCells[6] &&
        allCells[4] == '0') {
      ShowZeroWonDialog();
    } else if (allCells[7] == allCells[8] &&
        allCells[8] == allCells[9] &&
        allCells[7] == '0') {
      ShowZeroWonDialog();
    } else if (allCells[1] == allCells[4] &&
        allCells[4] == allCells[7] &&
        allCells[1] == "0") {
      ShowZeroWonDialog();
    } else if (allCells[2] == allCells[5] &&
        allCells[5] == allCells[8] &&
        allCells[2] == '0') {
      ShowZeroWonDialog();
    } else if (allCells[3] == allCells[6] &&
        allCells[6] == allCells[9] &&
        allCells[3] == '0') {
      ShowZeroWonDialog();
    } else if (allCells[1] == allCells[5] &&
        allCells[5] == allCells[9] &&
        allCells[1] == '0') {
      ShowZeroWonDialog();
    } else if (allCells[3] == allCells[5] &&
        allCells[5] == allCells[7] &&
        allCells[3] == '0') {
      ShowZeroWonDialog();
    }
  }

  void MatchDraw() {
    var areAllFieldFilled = true;
    for (int i = 1; i <= 9; i++) {
      if (allCells[i].isEmpty) {
        areAllFieldFilled = false;
        break;
      }
    }
    if (areAllFieldFilled) {
      final button = ElevatedButton(
        onPressed: () {
         Navigator.of(context).pop();

          setState(() {
            allCells = ["", "", "", "", "", "", "", "", "", ""];
            isOdd = true;
          });
        },
        child: Text('Restart'),
      );
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: Text('Draw'),
              content: Text('Match was drawn'),
              actions: [button],
            );
          });
    }
  }

  void ShowXWonDialog() {
    final button = ElevatedButton(
      onPressed: () {
         Navigator.of(context).pop();
        setState(() {
          allCells = ["", "", "", "", "", "", "", "", "", ""];
          isOdd = true;
        });
      },
      child: Text('Restart'),
    );
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('X Won'),
            content: Text('Congratulations 🥳 '),
            actions: [button],
          );
        });
        
  }

  void ShowZeroWonDialog() {
    final button = ElevatedButton(
      onPressed: () {
         Navigator.of(context).pop();
        setState(() {
          allCells = ["", "", "", "", "", "", "", "", "", ""];
          isOdd = true;
        });
      },
      child: Text('Restart'),
    );
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('Zero Won'),
            content: Text('Congratulations 🥳 '),
            actions: [button],
          );
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
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 15),
                child: Text(
                  'Turn of $whosTurnNext',
                  style: TextStyle(fontSize: 20),
                ),
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TicTakToeCart(
                      whatToShow: allCells[1],
                      index: 1,
                      iWasClicked: ACellWasClicked,
                    ),
                    TicTakToeCart(
                      whatToShow: allCells[2],
                      index: 2,
                      iWasClicked: ACellWasClicked,
                    ),
                    TicTakToeCart(
                      whatToShow: allCells[3],
                      index: 3,
                      iWasClicked: ACellWasClicked,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TicTakToeCart(
                      whatToShow: allCells[4],
                      index: 4,
                      iWasClicked: ACellWasClicked,
                    ),
                    TicTakToeCart(
                      whatToShow: allCells[5],
                      index: 5,
                      iWasClicked: ACellWasClicked,
                    ),
                    TicTakToeCart(
                      whatToShow: allCells[6],
                      index: 6,
                      iWasClicked: ACellWasClicked,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TicTakToeCart(
                      whatToShow: allCells[7],
                      index: 7,
                      iWasClicked: ACellWasClicked,
                    ),
                    TicTakToeCart(
                      whatToShow: allCells[8],
                      index: 8,
                      iWasClicked: ACellWasClicked,
                    ),
                    TicTakToeCart(
                      whatToShow: allCells[9],
                      index: 9,
                      iWasClicked: ACellWasClicked,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
