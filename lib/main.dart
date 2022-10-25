import 'package:flutter/material.dart';
import 'package:guessgame/screens/homescreen.dart';
// import 'package:guessgame/screens/paint_screen.dart';

void main() {
  runApp(GuessGame());
}

class GuessGame extends StatelessWidget {
  const GuessGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Guess Game',
      home: HomeScreen(),
    );
  }
}
