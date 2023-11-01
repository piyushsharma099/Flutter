import 'package:flutter/material.dart';

void main() => runApp
  (MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.teal[100],
    appBar: AppBar(
      leading: Icon(Icons.account_circle_rounded),
      title: Text("Home"),
      centerTitle:true,
      backgroundColor: Colors.teal,
    ),
    body: SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            child: InkWell(
              onDoubleTap: (){
                print("Container is Double Tappes");
              },
              onTap: (){
                print("Single Tapped");
              },
            ),

          ),
        ],
      ),
    ),
  ),
));
