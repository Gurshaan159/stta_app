import 'package:flutter/material.dart';
import 'package:stta_app/pages/games.dart';
import 'package:stta_app/pages/home_page.dart';
import 'package:stta_app/pages/stories.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int currentpage = 0;
  List<Widget> pages = [
    HomePage(), GamePage(), StoriesPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentpage),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.games), label: 'Games'),
          NavigationDestination(icon: Icon(Icons.book_outlined), label: 'Stories')
        ],
        height:100,
        backgroundColor: Colors.white,
        selectedIndex: currentpage,
        onDestinationSelected: (value) {
          setState(() {
            currentpage = value;
          });
          
        },
      ),
    );
  }
}
