import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Menu')),
            for (int i = 1; i <= 7; i++)
              ListTile(
                title: Text('ListTile $i'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage(i)),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final int listTileIndex;

  SecondPage(this.listTileIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile $listTileIndex'),
      ),
      body: Center(
        child: Text('You tapped on ListTile $listTileIndex'),
      ),
    );
  }
}