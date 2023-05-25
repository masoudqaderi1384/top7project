import 'package:flutter/material.dart';
import 'package:top7project/Pac1.dart';
import 'package:photo_view/photo_view.dart';

const Myicon = [
  Icon(Icons.add),
  Icon(Icons.access_alarm_outlined),
  Icon(Icons.dangerous),
  Icon(Icons.add),
  Icon(Icons.access_alarm_outlined),
  Icon(Icons.dangerous),
  Icon(Icons.dangerous),
];
const Mylist = ['photo_view', 'a', 'a', 'a', 'a', 'a,', 'a'];
const Mysubtitle = [
  'A simple zoomable image/content widget for Flutter',
  'a',
  'a',
  'a',
  'a',
  'a,',
  'a'
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdfe4e8),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Top 7 Package',
            style: TextStyle(
                color: Color(0xffdfe4e8),
                fontFamily: 'RobotoSlab-Regular',
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xFF851a50),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: Myicon.length,
        itemBuilder: (c, i) {
          return Container(
            color: Color(0xfffdb235),
            child: Column(children: [
              Container(
                child: ListTile(
                  leading: Myicon[i],
                  title: Text(
                    Mylist[i],
                    style: TextStyle(
                        fontFamily: 'RobotoSlab-Regular.ttf',
                        color: Color(0xff161853),
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0),
                  ),
                  subtitle: Text(Mysubtitle[i]),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage(i)),
                    );
                  },
                ),
              ),
              SizedBox(
                  height: 15.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xffdfe4e8),
                    ),
                  )),
            ]),
          );
        },
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
        title: Text('Mylist'),
      ),
      body: Center(
        child: Text('You tapped on ListTile $listTileIndex'),
      ),
    );
  }
}
