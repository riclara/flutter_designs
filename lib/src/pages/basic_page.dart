import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subTitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildImage(),
            _buildTitle(),
            _buildActions(),
            _buildTextBox(),
            _buildTextBox(),
            _buildTextBox(),
            _buildTextBox(),
            _buildTextBox(),
            _buildTextBox(),
            _buildTextBox(),
            _buildTextBox()
          ]
        ),
      )
    );
  }

  Widget _buildImage () {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        fit: BoxFit.cover,
        height: 190.0
      ),
    );
  }

  Widget _buildTitle () {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago con montañas', style: titleStyle,),
                  SizedBox(height: 7.0,),
                  Text('Lago con montañas no se donde', style: subTitleStyle,)
                ],
              ),
            ),
            Icon( Icons.star, color: Colors.red, size: 30.0,),
            Text('42', style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

  Widget _buildActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action('Call', Icons.call),
        _action('Route', Icons.near_me),
        _action('Share', Icons.share),
      ],
    );
  }

  Widget _buildTextBox () {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Magna voluptate anim aliquip proident nisi cillum quis voluptate nulla. Ea amet cillum labore duis. Anim amet tempor duis mollit sunt voluptate officia consectetur laborum aute consequat. Consectetur laborum nisi aliquip tempor anim. Esse ipsum ea Lorem enim esse consequat nulla Lorem quis.',
          textAlign: TextAlign.justify
        )
      ),
    );
  }

  Widget _action(String txt, IconData ico) {
    return Column(
      children: <Widget>[
        Icon(ico, color: Colors.blue, size: 40.0,),
        SizedBox(height: 5.0,),
        Text(txt, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
      ],
    );
  }

}