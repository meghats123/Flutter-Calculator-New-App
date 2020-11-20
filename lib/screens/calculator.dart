
import 'package:calculator_new/screens/addition.dart';
import 'package:calculator_new/screens/division.dart';
import 'package:calculator_new/screens/multiplication.dart';
import 'package:calculator_new/screens/subtraction.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Addition()));

          },
            child: Text("ADDITION"),
            color: Colors.amber,
          ),
          SizedBox(height: 10.0,),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Subtraction()));


          },
            child: Text("SUBTRACTION"),
            color: Colors.amber,
          ),
          SizedBox(height: 10.0,),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Multiplication()));


          },
            child: Text("MULTIPLICATION"),
            color: Colors.amber,
          ),
          SizedBox(height: 10.0,),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Division()));


          },
            child: Text("DIVISION"),
            color: Colors.amber,
          ),
          SizedBox(height: 10.0,),
        ],
      ),
    );
  }
}
