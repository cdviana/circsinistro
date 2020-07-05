import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portsgame/Screens/challenge1.dart';
import 'package:portsgame/ports/2in1outport.dart';
import 'package:portsgame/ports/or.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        Challenge1.path: (context) => Challenge1(),
      },
    );
  }
}
