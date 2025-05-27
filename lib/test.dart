import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({ Key? key }) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Drawer Header", style: TextStyle(color: Colors.white)),
            ),
            ListTile(title: Text("Item 1"), onTap: () {}),
            ListTile(title: Text("Item 2"), onTap: () {}),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("S"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/af80c648e5204e7c665b50c448dcec76883f6f61.png'), // তোমার অ্যাসেট ছবি
              ),
            ),
          )
        ],
      ),
      body: Center(child: Text("Tap on avatar to open Drawer")),
    );
  }
}