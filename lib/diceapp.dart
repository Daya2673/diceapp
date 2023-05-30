import 'dart:math';

import 'package:flutter/material.dart';
class diceapp extends StatefulWidget {
  const diceapp({Key? key}) : super(key: key);

  @override
  State<diceapp> createState() => _diceappState();
}

class _diceappState extends State<diceapp> {
  Random random=Random();
  int left=6;
  int right=3;
  void changeDice(){
    setState(() {
      left=Random().nextInt(6)+1;
      right=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Row(
      children: [
        TextButton(onPressed: (){changeDice();}, child:Image.asset('images/dice$left.jpg')),

        TextButton(onPressed: (){changeDice();}, child:Image.asset('images/dice$right.jpg')),
      ],
    ),
    );
  }
}
