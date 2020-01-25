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
      // statusBarColor: Colors.black,
      statusBarBrightness: Brightness.light
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      initialRoute: 'grid',
      routes: {
        'basic': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'grid': (BuildContext context) => GridButtons(),
      },
    );
  }
}