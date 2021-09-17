// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Future<void> normalDialog(BuildContext context, String string) async {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      title: ListTile(
        leading: Image.asset('assets/icons/superbrand.png'),
        title: Text('ERROR',style: TextStyle(color: Colors.red.shade900),),
        subtitle: Text(string),
      ),
      children: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('OK'),
        ),
      ],
    ),
  );
}
