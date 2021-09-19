// ignore_for_file: unnecessary_null_comparison, prefer_if_null_operators, unused_local_variable, empty_catches, prefer_void_to_null

import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:oppohelp/models/asset_model.dart';
import 'package:oppohelp/my_style.dart';

class ShowPdfView extends StatefulWidget {
  final AssetModel assetModel;
  const ShowPdfView({Key? key, required this.assetModel}) : super(key: key);
  @override
  _ShowPdfState createState() => _ShowPdfState();
}

class _ShowPdfState extends State<ShowPdfView> {
  AssetModel? model;
  PDFDocument? pdfDocument;

  @override
  void initState() {
    super.initState();
    model = widget.assetModel;
    createPDFDocument();
  }

  Future<Null> createPDFDocument() async {
    try {
      var result = await PDFDocument.fromURL(model!.pdf);
      setState(() {
        pdfDocument = result;
      });
    } catch (e) {
      print('e ===> ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyStyle().prinarColor,
        title: Text(model!.name == null ? 'Loading' : model!.name),
      ),
      body: pdfDocument == null
          ? Center(child: CircularProgressIndicator())
          : PDFViewer(document: pdfDocument!),
    );
  }
}
