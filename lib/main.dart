

import 'package:calculator_new/screens/calculator.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("CALCULATOR"),
          backgroundColor: Colors.amber,
        ),
        body: Calculator(),
      ),
    );
  }
}
