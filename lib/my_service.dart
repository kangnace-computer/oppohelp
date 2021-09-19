// ignore_for_file: prefer_const_constructors, prefer_if_null_operators, unnecessary_null_comparison, prefer_void_to_null, await_only_futures

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:oppohelp/list/asset_list.dart';
import 'package:oppohelp/list/cctv_list.dart';
import 'package:oppohelp/list/domain_list.dart';
import 'package:oppohelp/my_style.dart';

class MyService extends StatefulWidget {
  @override
  _MyServiceState createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  String? email;
  Widget currentWidget = AssetList();

  @override
  void initState() {
    super.initState();
    findAnEmail();
  }

  Future<Null> findAnEmail() async {
    await Firebase.initializeApp().then((value) async {
      await FirebaseAuth.instance.authStateChanges().listen((event) {
        setState(() {
          email = event!.email;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyStyle().prinarColor),
      drawer: builDrawer(context),
      body: currentWidget,
    );
  }

  Drawer builDrawer(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
              
                  builUserAccountsDrawerHeader(),
                  builAsset(),
                  builCctv(),
                  builDomain(),
                  builDoor(),
                  builemail(),
                  builHr(),
                  builAsset(),
                  SizedBox(height: 40),
                  builSignOut(),
                ],
              ),
              // builSignOut(),
            ],
          ),
        ),
      ),
    );
  }

  // ********************************* Mathod ********************************** */

  UserAccountsDrawerHeader builUserAccountsDrawerHeader() {
    return UserAccountsDrawerHeader(
      //Header ในส่วนของ Drawer
      decoration: BoxDecoration(
        //ปรับแต่งในส่วนของ Header Drawer
        image: DecorationImage(
          image: AssetImage('assets/images/profileBK.jpg'),
          fit: BoxFit.cover, //ปรับภาพให้เต็มกรอบพอดี
        ),
      ),
      accountName: Text('OPPO HELP'),
      accountEmail: MyStyle().titleEmail(email! == null ? 'E-mail' : email!),
      currentAccountPicture: Image.asset('assets/icons/detective.png'),
    );
  }

  ListTile builAsset() {
    return ListTile(
      leading: Image.asset('assets/icons/pdf.png'),
      title: Text('Asset'),
      subtitle: Text('loading...'),
      onTap: () {
        setState(() {
          currentWidget = AssetList();
        });
        Navigator.pop(context);
      },
    );
  }

  ListTile builCctv() {
    return ListTile(
      leading: Image.asset('assets/icons/cctv.png'),
      title: Text('CCTV'),
      subtitle: Text('loading'),
      onTap: () {
        setState(() {
          currentWidget = CctvList();
        });
        Navigator.pop(context);
      },
    );
  }

  ListTile builDomain() {
    return ListTile(
      leading: Image.asset('assets/icons/pdf.png'),
      title: Text('Domain'),
      subtitle: Text('loading'),
      onTap: () {
        setState(() {
          currentWidget = DomainList();
        });
        Navigator.pop(context);
      },
    );
  }

  ListTile builDoor() {
    return ListTile(
      leading: Image.asset('assets/icons/pdf.png'),
      title: Text('Door'),
      subtitle: Text('loading'),
      onTap: () {
        setState(() {
          currentWidget = DomainList();
        });
        Navigator.pop(context);
      },
    );
  }

  ListTile builemail() {
    return ListTile(
      leading: Image.asset('assets/icons/pdf.png'),
      title: Text('Email'),
      subtitle: Text('loading'),
      onTap: () {
        setState(() {
          currentWidget = DomainList();
        });
        Navigator.pop(context);
      },
    );
  }

  ListTile builHr() {
    return ListTile(
      leading: Image.asset('assets/icons/pdf.png'),
      title: Text('HR page'),
      subtitle: Text('loading'),
      onTap: () {
        setState(() {
          currentWidget = DomainList();
        });
        Navigator.pop(context);
      },
    );
  }

  Column builSignOut() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ListTile(
          onTap: () async {
            await Firebase.initializeApp().then((value) async {
              await FirebaseAuth.instance.signOut().then((value) =>
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/authen', (route) => false));
            });
          },
          tileColor: MyStyle().darkColor,
          // ignore: prefer_const_constructors
          leading: Icon(
            Icons.exit_to_app,
            color: Colors.white,
            size: 35,
          ),
          title: MyStyle().titleH2White('Sign Out'),
          subtitle: MyStyle().titleH3White('v0.0.1'),
        ),
      ],
    );
  }
}
