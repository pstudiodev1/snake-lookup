import 'package:flutter/material.dart';
import 'package:Snake.Lookup/scenes/welcome.dart';

void main() {
  runApp(Main());
}

//
//
//
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snake Lookup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Welcome(),
      // initialRoute: '/welcome',
      // routes: {
      //   '/': (context) => Main(),
      //   '/welcome': (context) => Welcome(),
      // },
    );
  }
}
