////import 'dart:html';

import 'package:flutter/material.dart';
import 'package:stta_app/pages/story_display.dart';
import 'package:stta_app/core/constants.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Create 45 empty string variables for authors
    List<String> authors = List.generate(45, (index) => 'Author${index + 1}');

    return Scaffold(
        appBar: AppBar(
            title: const Text("Logo Here"),
            toolbarHeight: 100,
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10)))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 75, // Fixed height
                color: const Color.fromRGBO(205, 239, 234, 1),
                child: const Center(
                  child: Text(
                    "STTA Library",
                    style: TextStyle(fontFamily: "Truculenta", fontSize: 32),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // Create 45 containers dynamically
              ...List.generate(45, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 125,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.25),
                              offset: const Offset(0, 8),
                              blurRadius: 24,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          children: [
                            Container(
                              height: 125,
                              width: 130,
                              decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(50),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 25),
                                Text(
                                  "Title ${index + 1}",
                                  style: const TextStyle(
                                      fontSize: 32, fontFamily: "Truculenta"),
                                ),
                                const SizedBox(height: 10),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return StoryDisplay(
                                        author: authors[index],
                                        story: stories[index],
                                        title: titles[index],
                                      );
                                    }));
                                  },
                                  child: Card(
                                    
                                    color:
                                        const Color.fromRGBO(42, 124, 111, .4),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          25), // Border Radius of 25px
                                    ),
                                    child: const SizedBox(
                                      width: 120,
                                      height: 30,
                                      child: Center(
                                          child: Text(
                                        'Read It',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: "Truculenta"),
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ));
  }
}