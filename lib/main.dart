import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Card _buildCard(Color color, IconData icon, String Label) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 125,
            height: 125,
            child: Icon(icon, color: color,size: 100),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(Label),
          )
        ],
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Rental',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Book Rental'),
          backgroundColor: Colors.amber,
        ),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildCard(Colors.amber, Icons.library_books, 'BUY'),
              _buildCard(Colors.amber, Icons.book, 'RENT'),
            ],
        ),
      ),
    );
  }
}
