// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:oppohelp/models/asset_model.dart';
import 'package:oppohelp/my_style.dart';
import 'package:oppohelp/show_pdf_view.dart';

class CctvList extends StatefulWidget {
  const CctvList({Key? key}) : super(key: key);
  @override
  _CctvListState createState() => _CctvListState();
}

class _CctvListState extends State<CctvList> {
  List<Widget> widgets = [];
  List<AssetModel> assetmodes = [];

  @override
  void initState() {
    super.initState();
    readData();
  }

  Future<Null> readData() async {
    await Firebase.initializeApp().then((value) async {
      // print('initiliza OK');
      await FirebaseFirestore.instance
          .collection('cctv')
          .orderBy('name')
          .snapshots()
          .listen((event) {
        // print('snapshots = ${event.docs}');
        int index = 0;
        for (var snapshot in event.docs) {
          Map<String, dynamic> map = snapshot.data();
          // print('map = $map');
          AssetModel model = AssetModel.fromMap(map);
          assetmodes.add(model);
          // print('name = ${model.name}');
          setState(() {
            widgets.add(createWidget(model, index));
          });
          index++;
        }
      });
    });
  }

  Widget createWidget(AssetModel model, int index) => GestureDetector(
        onTap: () {
          print('Your Click form index = $index');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShowPdfView(
                assetModel: assetmodes[index],
              ),
            ),
          );
        },
        child: Card(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 100,
                  child: Image.network(model.cover),
                ),
                SizedBox(
                  height: 10,
                ),
                MyStyle().titleH3(model.name)
              ],
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets.length == 0
          ? CircularProgressIndicator()
          : GridView.extent(maxCrossAxisExtent: 200, children: widgets),
    );
  }
}
