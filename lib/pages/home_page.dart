//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:stta_app/pages/stories.dart';
//import 'package:stta_app/core/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'Logo here',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            toolbarHeight: 100,
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10)))),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: [
              
              Center(
                child: Row(
                  children: [
                    const SizedBox(width: 40),
                    Container(
                      width: 10,
                      height: 40,
                      // ignore: prefer_const_constructors
                      color: Color.fromRGBO(
                          42, 124, 111, 1), // Color of the accent bar
                    ),
                    const SizedBox(
                        width: 8), // Space between the accent bar and text
                    const Text(
                      "Recommended Stories",
                      style: TextStyle(
                        fontFamily: "Truculenta",
                        fontSize: 32
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Center(
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
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              const Text(
                                "Title 1",
                                style: TextStyle(
                                    fontFamily: "Truculenta",
                        fontSize: 32),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const StoriesPage();
                                  }));
                                },
                                child: Expanded(
                                  child: Card(
                                    color:
                                        const Color.fromRGBO(42, 124, 111, .5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          25), // Border Radius of 25px
                                    ),
                                    child: const SizedBox(
                                      width: 130,
                                      height: 30,
                                      child: Center(
                                          child: Text('Read It',
                                              style: TextStyle(fontSize: 14, fontFamily: "Truculenta",
                        ))),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )))),
              const SizedBox(height: 40),
              Center(
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
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              const Text(
                                "Title 2",
                                style: TextStyle(
                                    fontFamily: "Truculenta",
                        fontSize: 32),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const StoriesPage();
                                  }));
                                },
                                child: Expanded(
                                  child: Card(
                                    color:
                                        const Color.fromRGBO(42, 124, 111, .5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          25), // Border Radius of 25px
                                    ),
                                    child: const SizedBox(
                                      width: 130,
                                      height: 30,
                                      child: Center(
                                          child: Text('Read It',
                                              style: TextStyle(fontSize: 14, fontFamily: "Truculenta",
                        ))),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )))),
              const SizedBox(height: 40),
              Center(
                child: Row(
                  children: [
                    const SizedBox(width: 40),
                    Container(
                      width: 10,
                      height: 40,
                      // ignore: prefer_const_constructors
                      color: Color.fromRGBO(
                          42, 124, 111, 1), // Color of the accent bar
                    ),
                    const SizedBox(
                        width: 8), // Space between the accent bar and text
                    const Text(
                      "Game of the Day",
                      style: TextStyle(
                        
                        fontFamily: "Truculenta",
                        fontSize: 32
                        
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Column(children: [
                const Row(children: [
                  SizedBox(width: 60),
                  //Text("Anagram",
                    //  style: TextStyle(
                      //  fontSize: 24 ,
                        //fontFamily: "Truculenta"
                      //)),
                  SizedBox(width: 1)
                ]),
                Image.asset('images/AnagramPic.png', semanticLabel: 'Anagram'),
              ]),
            ],
          ),
        )));
  }
}
