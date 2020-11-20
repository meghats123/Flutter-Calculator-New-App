import 'package:flutter/material.dart';
class Multiplication extends StatefulWidget {
  @override
  _AdditionState createState() => _AdditionState();
}

class _AdditionState extends State<Multiplication> {
  TextEditingController getFirstnum=TextEditingController();
  TextEditingController getSecondnum=TextEditingController();
  double result=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: getFirstnum,
                decoration: InputDecoration(
                    hintText: "Enter the First Number",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0,),
              TextField(
                controller: getSecondnum,
                decoration: InputDecoration(
                    hintText: "Enter the Second Number",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0,),
              RaisedButton(onPressed: (){
                double getnum1=double.parse(getFirstnum.text);
                double getnum2=double.parse(getSecondnum.text);
                setState(() {
                  result=getnum1*getnum2;
                });


              },
                child: Text("MUL"),
              ),
              Text(result.toString(),
                style:TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}