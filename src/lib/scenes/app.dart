import 'package:flutter/material.dart';
import 'package:Snake.Lookup/scenes/home.dart';
import 'package:Snake.Lookup/scenes/contact.dart';
import 'package:Snake.Lookup/scenes/source.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  //
  int selectedIndex = 0;

  List<String> titles = <String>[
    'หน้าแรก',
    'ติดต่อเรา',
    'แหล่งข้อมูล',
  ];

  List<Widget> scences = <Widget>[
    Home(),
    Contact(),
    Source(),
  ];

  //
  //
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snake Lookup'),
        ),
        body: SafeArea(
          child: scences.elementAt(selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'หน้าแรก',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_contact_cal),
              label: 'ติดต่อ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help),
              label: 'แหล่งข้อมูล',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black38,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ));
  }
}
