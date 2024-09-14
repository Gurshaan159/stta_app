import 'package:flutter/material.dart';
import 'package:stta_app/pages/anagram.dart';
import 'package:stta_app/pages/hangman.dart';
import 'package:stta_app/pages/prompt.dart';
import 'package:stta_app/pages/sudoku.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Logo Here"),
            toolbarHeight: 100,
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10)))),
        body: Column(children: [
          Container(
              height: 75,
              color: const Color.fromRGBO(205, 239, 234, 1),
              child: const Center(
                child: Text(
                  "Learning Arcade",
                  style: TextStyle(fontFamily: "Truculenta", fontSize: 32),
                ),
              )),
          SizedBox(height: 40),
          Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SudokuPage();
                  }));
                },
                child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)))),
              ),
              Text("Sudoku",style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Truculenta"
                ),)
            ]),
            SizedBox(width: 50),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const AnagramPage();
                    }));
                  },
                  child: Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)))),
                ),
                Text("Anagram",style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Truculenta"
                ),)
              ],
            )
          ])),
          SizedBox(height: 75),
          Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PromptPage();
                  }));
                },
                child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)))),
              ),
              Text("other",style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Truculenta"
                ),)
            ]),
            SizedBox(width: 50),
            Column(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HangmanPage();
                  }));
                },
                child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)))),
              ),
              const Text(
                "Hangman",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Truculenta"
                ),
                
              )
            ]),
          ])),
        ]));
  }
}
