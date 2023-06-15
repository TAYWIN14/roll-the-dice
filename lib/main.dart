import 'package:flutter/material.dart';
import 'package:roll_the_dice/body_color.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: BodyColor(
          Color.fromARGB(255, 33, 5, 109),
          Color.fromARGB(255, 229, 95, 95),
        ),
      ),
    ),
  );
}
