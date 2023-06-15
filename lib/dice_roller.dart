import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 1;

  void rollDice() {
    setState(() {
      currentDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 300,
        ),
        const SizedBox(height: 50),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 38,
            ),
          ),
          child: const Text("ทอย!!"),
        )
      ],
    );
  }
}
