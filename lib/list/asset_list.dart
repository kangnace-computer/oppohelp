// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AssetList extends StatefulWidget {
  const AssetList({ Key? key }) : super(key: key);

  @override
  _AssetListState createState() => _AssetListState();
}

class _AssetListState extends State<AssetList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Asset list'),
      
    );
  }
}