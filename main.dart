import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:navigation_drawer/dafaults/defaults.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

var indexClicked = 0;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [
    Center(
      child: Text('Inbox'),
    ),
    Center(
      child: Text('Starred'),
    ),
    Center(
      child: Text('Sent'),
    ),
    Center(
      child: Text('Drafts'),
    ),
    Center(
      child: Text('Trash'),
    ),
    Center(
      child: Text('Spam'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Bar'),
      ),
      body: pages[indexClicked],
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              // padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/drawer.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'John Rambo',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    'john@rambo.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    selected: indexClicked == 0,
                    selectedTileColor: Defaults.drawerSelectedTileColor,
                    onTap: () {
                      setState(() {
                        indexClicked = 0;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Defaults.drawerItemIcon[0],
                      size: 35,
                      color: indexClicked == 0
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,),
                    title: Text(
                      Defaults.drawerItemText[0],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: indexClicked == 0
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                    ),
                  ),
                  ListTile(
                    selected: indexClicked == 1,
                    selectedTileColor: Defaults.drawerSelectedTileColor,
                    onTap: () {
                      setState(() {
                        indexClicked = 1;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Defaults.drawerItemIcon[1],
                      size: 35,
                      color: indexClicked == 1
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,),
                    title: Text(
                      Defaults.drawerItemText[1],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: indexClicked == 1
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                    ),
                  ),
                  ListTile(
                    selected: indexClicked == 2,
                    selectedTileColor: Defaults.drawerSelectedTileColor,
                    onTap: () {
                      setState(() {
                        indexClicked = 2;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Defaults.drawerItemIcon[2],
                      size: 35,
                      color: indexClicked == 2
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,),
                    title: Text(
                      Defaults.drawerItemText[2],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: indexClicked == 2
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                    ),
                  ),
                  ListTile(
                    selected: indexClicked == 3,
                    selectedTileColor: Defaults.drawerSelectedTileColor,
                    onTap: () {
                      setState(() {
                        indexClicked = 3;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Defaults.drawerItemIcon[3],
                      size: 35,
                      color: indexClicked == 3
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,),
                    title: Text(
                      Defaults.drawerItemText[3],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: indexClicked == 3
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                    ),
                  ),
                  ListTile(
                    selected: indexClicked == 4,
                    selectedTileColor: Defaults.drawerSelectedTileColor,
                    onTap: () {
                      setState(() {
                        indexClicked = 4;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Defaults.drawerItemIcon[4],
                      size: 35,
                      color: indexClicked == 4
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,),
                    title: Text(
                      Defaults.drawerItemText[4],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: indexClicked == 4
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                    ),
                  ),
                  ListTile(
                    selected: indexClicked == 5,
                    selectedTileColor: Defaults.drawerSelectedTileColor,
                    onTap: () {
                      setState(() {
                        indexClicked = 5;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Defaults.drawerItemIcon[5],
                      size: 35,
                      color: indexClicked == 5
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,),
                    title: Text(
                      Defaults.drawerItemText[5],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: indexClicked == 5
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 0.8,
                    height: 1,
                    indent: 5,
                    endIndent: 5,
                    color: Defaults.drawerItemColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text('JetMail',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      color: Defaults.drawerItemSelectedColor
                    ),),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text('Version 1.0.2',
                    style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      color: Defaults.drawerItemSelectedColor
                    ),),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 0.8,
                    height: 1,
                    indent: 5,
                    endIndent: 5,
                    color: Defaults.drawerItemColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
