import 'package:flutter/material.dart';
import 'package:roll_the_dice/dice_roller.dart';


class BodyColor extends StatelessWidget {
  const BodyColor(this.color1, this.color2, {super.key});

   const BodyColor.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
