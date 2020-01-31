import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design/src/pages/basic_page.dart';
import 'package:flutter_design/src/pages/grid_buttons.dart';
import 'package:flutter_design/src/pages/scroll_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      
      home: PageView(
        children: <Widget>[
          BasicPage(),
          ScrollPage(),
          GridButtons()
        ],
      ),
    );
  }
}