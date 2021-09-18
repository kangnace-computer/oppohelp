// ignore_for_file: unnecessary_null_comparison, prefer_if_null_operators

import 'package:flutter/material.dart';
import 'package:oppohelp/models/asset_model.dart';
import 'package:oppohelp/my_style.dart';

class ShowPdfView extends StatefulWidget {
  final AssetModel? assetModel;
  const ShowPdfView({Key? key, this.assetModel}) : super(key: key);
  @override
  _ShowPdfState createState() => _ShowPdfState();
}

class _ShowPdfState extends State<ShowPdfView> {
  late AssetModel model;

  @override
  void initState() {
    super.initState();
    model = widget.assetModel!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyStyle().prinarColor,
        title: Text(model.name == null ? 'Loading' : model.name),
      ),
    );
  }
}
