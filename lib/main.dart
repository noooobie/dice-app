import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dices = 1;
  int second = 2;

  void getDice() {
    setState(() {
      dices = Random().nextInt(6) + 1;
      second = Random().nextInt(6) + 1;
      print('Clicked');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                getDice();
              },
              child: Image.asset('images/dice$dices.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                getDice();
              },
              child: Image.asset('images/dice$second.png'),
            ),
          ),
        ],
      ),
    );
  }
}
