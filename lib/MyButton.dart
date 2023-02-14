import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
   MyButton({ required this.text,required  this.color,required  this.onPreessed});
String text;
Function() onPreessed;
Color color;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        elevation: 5.0,
        child: MaterialButton(
          onPressed:
            //Implement registration functionality.
            onPreessed
          ,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
           text,
            style: TextStyle(color: color),
          ),
        ),
      ),
    );
  }
}
