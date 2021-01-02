import 'package:flutter/material.dart';

//
//
//
class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.blue[80],
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/contact-line.png',
                  ),
                  Container(
                      width: double.infinity,
                      height: 70,
                      color: Colors.blue[50],
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Line ID: indyitgroup',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Container(
              width: double.infinity,
              color: Colors.blue[80],
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/contact-gmail.png',
                  ),
                  Container(
                      width: double.infinity,
                      height: 70,
                      color: Colors.blue[50],
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Email: pstudiodev@gmail.com',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
