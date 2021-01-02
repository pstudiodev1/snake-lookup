import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:Snake.Lookup/scenes/app.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 3,
        navigateAfterSeconds: App(),
        title: Text('Snake Lookup',
            style: TextStyle(
              color: Colors.brown,
              fontSize: 20.0,
            )),
        image: Image.asset('assets/images/logo.png'),
        backgroundColor: Colors.white,
        photoSize: 100.0,
        loaderColor: Colors.blue);
  }
}
