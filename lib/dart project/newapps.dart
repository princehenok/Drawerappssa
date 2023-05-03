import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DrawerApp(),
  ));
}

// ignore: use_key_in_widget_constructors
class DrawerApp extends StatefulWidget {
  @override
  _DrawerAppState createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('asset/henokk.jpg'),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: const Text('henokteshe93@gmail.com',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w200)),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.data_object),
              title: Text('Items'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
