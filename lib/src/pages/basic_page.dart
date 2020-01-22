import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subTitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(
            image: NetworkImage('https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Lago con montañas', style: titleStyle,),
                      SizedBox(height: 7.0,),
                      Text('Lago con montañas que no se donde', style: subTitleStyle,)
                    ],
                  ),
                ),
                Icon( Icons.star, color: Colors.red, size: 30.0,),
                Text('42', style: TextStyle(fontSize: 20.0),)
              ],
            ),
          )
        ],
      )
    );
  }
}