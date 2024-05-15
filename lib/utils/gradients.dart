import 'package:flutter/material.dart';

class Gradients{

  static Gradient blue = const LinearGradient(
          colors: [Color(0xffa2f6ec), Color.fromARGB(255, 247, 225, 225)],
          stops: [0, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );

  static Gradient pink = const LinearGradient(
          colors: [Color(0xfff6acd0), Color(0xfffae0e5)],
          stops: [0, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );

  static Gradient red = const LinearGradient(
          colors: [Color.fromARGB(255, 246, 216, 188), Color.fromARGB(255, 251, 199, 199)],
          stops: [0, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
}