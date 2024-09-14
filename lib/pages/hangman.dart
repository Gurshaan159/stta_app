import 'package:flutter/material.dart';


class HangmanPage extends StatelessWidget {
  const HangmanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hangman')),
      body:Image.asset('images/Hangman.png')
    );
  }
}