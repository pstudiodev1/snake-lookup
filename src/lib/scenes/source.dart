import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//
//
//
class Source extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () async {
                await launch(
                    'https://th.wikipedia.org/wiki/%E0%B8%A3%E0%B8%B2%E0%B8%A2%E0%B8%8A%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%B9');
              },
              child: Container(
                width: double.infinity,
                color: Colors.blue[80],
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/source-wiki.png',
                    ),
                    Container(
                        width: double.infinity,
                        height: 70,
                        color: Colors.blue[50],
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'https://th.wikipedia.org/wiki',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            GestureDetector(
              onTap: () async {
                await launch('https://www.facebook.com/groups/908415245857501');
              },
              child: Container(
                width: double.infinity,
                color: Colors.blue[80],
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/source-facebook.png',
                    ),
                    Container(
                        width: double.infinity,
                        height: 90,
                        color: Colors.blue[50],
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'https://www.facebook.com/groups/908415245857501',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
