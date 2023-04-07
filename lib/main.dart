import 'package:flutter/material.dart';

void main() => runApp(MyAPP());

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          iconTheme: IconThemeData(color: Colors.black)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      "name": "Desktop",
      "icon": Icons.computer,
      "price": "\$200.0",
    },
    {
      "name": "Smartphone",
      "icon": Icons.smartphone,
      "price": "\$1000.0",
    },
    {
      "name": "Cable",
      "icon": Icons.cable,
      "price": "\$10.0",
    },
    {
      "name": "Mouse",
      "icon": Icons.mouse,
      "price": "\$200.0",
    },
    {
      "name": "Smart Screen",
      "icon": Icons.smart_screen,
      "price": "\$200.0",
    },
    {
      "name": "Tablet",
      "icon": Icons.tablet_android,
      "price": "\$1000.0",
    },
    {
      "name": "Camera",
      "icon": Icons.camera_alt,
      "price": "\$1000.0",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.data_object),
        title: Text('Lists of items'),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Icon(
                  items[index]["icon"],
                  color: items[index]["name"] == "Cable" ? Colors.grey : null,
                  size: 30,
                ),
                title: Text(
                  items[index]["name"],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  items[index]["price"],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.edit),
              ),
            );
          },
        ),
      ),
    );
  }
}
