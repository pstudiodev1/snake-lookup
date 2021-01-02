import 'package:flutter/material.dart';
import 'package:Snake.Lookup/models/data.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:url_launcher/url_launcher.dart';

class Detail extends StatelessWidget {
  //
  final Data data;

  //
  //
  //
  Detail(this.data);

  //
  //
  //
  @override
  Widget build(BuildContext context) {
    var detail = data.detail1.replaceAll('\n', '\n\n');
    //
    return Scaffold(
      appBar: AppBar(
        title: Text(data.nameTh),
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        // padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 400,
                child: Carousel(
                  images: [AssetImage('assets/images/' + data.images.image1)],
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      data.nameTh,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      data.nameEn,
                      textAlign: TextAlign.center,
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.only(
                          top: 5, left: 10, right: 10, bottom: 100),
                      child: Text(detail),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          launch(
              'https://www.google.com/search?q=' + data.nameEn + '&tbm=isch');
        },
        child: Icon(Icons.language),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
