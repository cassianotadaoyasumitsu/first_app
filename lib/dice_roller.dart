import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 2;

  void roolDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'U-Innova \n'
          'You rolled a $currentDice',
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
        ),
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 200,
        ),
        TextButton(
          onPressed: roolDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(20.0),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
