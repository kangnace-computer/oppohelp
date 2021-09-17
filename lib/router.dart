import 'package:flutter/material.dart';
import 'package:oppohelp/authen.dart';
import 'package:oppohelp/my_service.dart';

// import 'package:fluttertest/onbording.dart';
// import 'package:fluttertest/register.dart';

final Map<String, WidgetBuilder> routes = {
  // '/onbord': (BuildContext context) => Onbording(),
  '/authen': (BuildContext context) => Authen(),
  // '/register': (BuildContext context) => Register(),
  '/myService': (BuildContext context) => MyService(),
};
