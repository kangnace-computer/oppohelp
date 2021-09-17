import 'package:flutter/material.dart';

class MyStyle {
  Color darkColor = Color(0xff338a3e);
  Color prinarColor = Color(0xff66bb6a);
  Color lightColor = Color(0xff98ee99);

  Widget showLogo() => Image.asset('assets/icons/superbrand.png');

  Widget titleH1(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: darkColor,
        ),
      );

  Widget titleH2(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: darkColor,
        ),
      );
  Widget titleH2White(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      );

  Widget titleH3(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: darkColor,
        ),
      );

  Widget titleH3White(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 16,
          // fontWeight: FontWeight.bold,
          color: Colors.white54,
        ),
      );

  Widget titleEmail(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 18,
          // fontWeight: FontWeight.bold,
          color: darkColor,
        ),
      );

  MyStyle();
}
