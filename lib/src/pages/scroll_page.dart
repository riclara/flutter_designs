import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _content1(),
          _content2()
        ],
      )
    );
  }

  Widget _content1 () {
    return Stack(
      children: <Widget>[
        _colorBackground(),
        _imageBackground(),
        _infoIndex()
      ],
    );
  }

  Widget _content2 () {
    return Stack(
      children: <Widget>[
        _colorBackground(),
        Center(
          child: RaisedButton(
            shape: StadiumBorder(),
            color: Colors.blue,
            textColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0),),
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  Widget _colorBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imageBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _infoIndex() {
    final style = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('11 º', style: style,),
          Text('Miercoles', style: style,),
          Expanded(child: Container()),
          Icon(Icons.arrow_drop_down, color: Colors.white, size: 70.0)
        ],
      ),
    );
  }

}