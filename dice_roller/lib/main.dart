import 'package:flutter/material.dart';

import 'package:dice_roller/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 255, 255, 0),
          Color.fromARGB(255, 255, 136, 0),
        ),
      ),
    ),
  );
}
