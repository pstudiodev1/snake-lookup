import 'dart:developer';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:Snake.Lookup/scenes/detail.dart';
import 'package:Snake.Lookup/models/data.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//
//
//
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

//
//
//
class _HomeState extends State<Home> {
  //
  List<Data> dataList;
  TextEditingController searchTextCtl;

  //
  //
  //
  @override
  void initState() {
    super.initState();
    // Init.
    searchTextCtl = new TextEditingController();
    // Load data.
    requestData();
  }

  //
  //
  //
  Future<void> requestData() async {
    // Load data.
    String jsonStr = await DefaultAssetBundle.of(context)
        .loadString("assets/data/data.json");
    dynamic parsed = convert.jsonDecode(jsonStr);
    //
    dataList = List<Data>();
    for (var item in parsed) {
      dataList.add(Data.fromJson(item));
    }
    // Refresh UI,.
    setState(() {});
  }

  //
  //
  //
  void searchByKeyword() {
    if (searchTextCtl.text.length == 0) {
      requestData();
    } else {
      dataList = dataList
          .where((element) =>
              (element.nameTh.indexOf(searchTextCtl.text) != -1 ||
                  element.nameEn.indexOf(searchTextCtl.text) != -1))
          .toList();
      setState(() {});
    }
  }

  //
  //
  //
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          searchTextCtl.text = '';
          Alert(
              context: context,
              title: "ค้นหา",
              content: Column(
                children: <Widget>[
                  TextField(
                    controller: searchTextCtl,
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      labelText: 'ข้อความ',
                    ),
                  ),
                ],
              ),
              buttons: [
                DialogButton(
                  onPressed: () {
                    Navigator.pop(context);
                    searchByKeyword();
                  },
                  child: Text(
                    "ค้นหา",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ]).show();
        },
        child: Icon(Icons.search),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          padding: EdgeInsets.all(5),
          child: dataList != null && dataList.length > 0
              ? GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                  children: dataList.map((item) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detail(item)),
                          );
                        },
                        child:
                            Image.asset('assets/images/' + item.images.image1));
                  }).toList())
              : Container()),
    );
  }
}
