import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class GridButtons extends StatelessWidget {
  const GridButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titles(),
                _buttonsGrid()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        )
      ),
    );

    final pinkBox = Positioned(
      top: -100.0,
      child: Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          width: 360.0,
          height: 360.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0),
              ]
            )
          ),
        ),
      ),
    );
    
    

    return Stack(
      children: <Widget>[
        gradient,
        pinkBox
      ],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0,),
            Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 18))
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return new Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 88, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context)
          .textTheme.copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.calendar_today, size: 30.0)
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.bubble_chart, size: 30.0)
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.supervised_user_circle, size: 30.0)
          )
        ],
      ),
    );
  }

  Widget _buttonsGrid () {
    return Table(
      children: <TableRow>[
        TableRow(
          children: [
            _buildButtonGrid(Colors.blue, Icons.border_all, 'General'),
            _buildButtonGrid(Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ]
        ),
        TableRow(
          children: [
            _buildButtonGrid(Colors.pinkAccent, Icons.shop, 'Buy'),
            _buildButtonGrid(Colors.orange, Icons.insert_drive_file, 'File'),
          ]
        ),
        TableRow(
          children: [
            _buildButtonGrid(Colors.blueAccent, Icons.movie_filter, 'Entertaiment'),
            _buildButtonGrid(Colors.green, Icons.cloud, 'Grocery'),
          ]
        ),
        TableRow(
          children: [
            _buildButtonGrid(Colors.red, Icons.collections, 'Photos'),
            _buildButtonGrid(Colors.teal, Icons.help_outline, 'Help'),
          ]
        )
      ],
    );
  }

  Widget _buildButtonGrid (Color color, IconData icon, String txt) {
    return ClipRect(
      child: Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: 5.0,),
            CircleAvatar(
              backgroundColor: color,
              radius: 35.0,
              child: Icon(icon, color: Colors.white, size: 30.0,),
            ),
            Text(txt, style: TextStyle(color: color)),
            SizedBox(height: 5.0,)
          ],
        ),
      ),
    );
  }
}