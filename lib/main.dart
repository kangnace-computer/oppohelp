import 'package:flutter/material.dart';
import 'package:oppohelp/router.dart';

// String initialRoute = '/authen';
// Future<Null> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp().then((value) async {
//     // ignore: await_only_futures
//     await FirebaseAuth.instance.authStateChanges().listen((event) {
//       if (event != null) {
//         initialRoute = '/myService';
//       }
//       runApp(MyApp());
//     });
//   });
//   runApp(MyApp());
// }
// ignore: prefer_const_constructors
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      initialRoute: '/authen',
    );
  }
}
