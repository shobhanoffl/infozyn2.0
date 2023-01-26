import 'package:emag/screens/Articles.dart';
import 'package:emag/screens/Leaderboard.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Profile.dart';

class Redirector extends StatefulWidget {
  const Redirector({Key? key}) : super(key: key);

  @override
  State<Redirector> createState() => _RedirectorState();
}

class _RedirectorState extends State<Redirector> {
  int currentScreen = 0;
  static final List screensLst = [const Home(), const Profile()];
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Infozyn'), leading: const Icon(Icons.home)),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed, // Fixed
          backgroundColor: Colors.amberAccent,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Articles'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Achievements'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Upcoming'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Info'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Profile'),
          ],
        ),
        body: const Articles(),
      ),
    );
  }
}
