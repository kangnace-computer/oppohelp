import 'package:flutter/material.dart';
import 'package:oppohelp/my_style.dart';


class MyService extends StatefulWidget {
  @override
  _MyServiceState createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
//   String? email;
//   Widget currentWidget = ShowPdfList();

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     findAnEmail();
//   }

//   Future<Null> findAnEmail() async {
//     await Firebase.initializeApp().then((value) async {
//       await FirebaseAuth.instance.authStateChanges().listen((event) {
//         setState(() {
//           email = event!.email;
//         });
//       });
//     });
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyStyle().prinarColor),
      // drawer: builDrawer(context),
      // body: currentWidget,
    );
  }

  // Drawer builDrawer(BuildContext context) {
  //   return Drawer(
  //     child: Stack(
  //       children: [
  //         SafeArea(
  //           child: Column(
  //             children: [
  //               builUserAccountsDrawerHeader(),
  //               builShowList(),
  //               builPrinter(),
  //               builPdf(),
  //             ],
  //           ),
  //         ),
  //         builSignOut(),
  //       ],
  //     ),
  //   );
  // }

  // ********************************* Mathod ********************************** */


  // UserAccountsDrawerHeader builUserAccountsDrawerHeader() {
  //   return UserAccountsDrawerHeader(
  //               //Header ในส่วนของ Drawer
  //               decoration: BoxDecoration(
  //                 //ปรับแต่งในส่วนของ Header Drawer
  //                 image: DecorationImage(
  //                   image: AssetImage('assets/images/profileBK.jpg'),
  //                   fit: BoxFit.cover, //ปรับภาพให้เต็มกรอบพอดี
  //                 ),
  //               ),
  //               accountName: Text('OPPO HELP'),
  //               accountEmail: MyStyle().titleEmail(email! == null ? 'E-mail' : email!),
  //               currentAccountPicture:
  //                   Image.asset('assets/icons/detective.png'),
  //             );
  // }

  // ListTile builShowList() {
  //   return ListTile(
  //     leading: Image.asset('assets/icons/cctv.png'),
  //     title: Text('CCTV'),
  //     subtitle: Text('การใช้งานกล้องเพื่อดู ย้อนหลัง'),
  //     onTap: () {
  //       setState(() {
  //         currentWidget = ShowPdfList();
  //       });
  //       Navigator.pop(context);
  //     },
  //   );
  // }

  // ListTile builPrinter() {
  //   return ListTile(
  //     leading: Image.asset('assets/icons/printer.png'),
  //     title: Text('PRTINTER'),
  //     subtitle: Text('ปัญหาการใช้งาน printer'),
  //     onTap: () {
  //       setState(() {
  //         currentWidget = PrintList();
  //       });
  //       Navigator.pop(context);
  //     },
  //   );
  // }

  // ListTile builPdf() {
  //   return ListTile(
  //     leading: Image.asset('assets/icons/pdf.png'),
  //     title: Text('PDF'),
  //     subtitle: Text('แสดงไฟล์ PDF ต่าง ๆ'),
  //     onTap: () {
  //       setState(() {
  //         currentWidget = AnimeList();
  //       });
  //       Navigator.pop(context);
  //     },
  //   );
  // }

  // Column builSignOut() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.end,
  //     children: [
  //       ListTile(
  //         onTap: () async {
  //           await Firebase.initializeApp().then((value) async {
  //             await FirebaseAuth.instance.signOut().then((value) =>
  //                 Navigator.pushNamedAndRemoveUntil(
  //                     context, '/authen', (route) => false));
  //           });
  //         },
  //         tileColor: MyStyle().darkColor,
  //         leading: Icon(
  //           Icons.exit_to_app,
  //           color: Colors.white,
  //           size: 40,
  //         ),
  //         title: MyStyle().titleH2White('Sign Out'),
  //         subtitle: MyStyle().titleH3White('Sign Out & Go to Login page'),
  //       ),
  //     ],
  //   );
  // }
}
