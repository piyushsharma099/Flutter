import 'package:flutter/material.dart';

void main() => runApp
  (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    backgroundColor: Colors.teal[100],
    appBar: AppBar(
      leading: Icon(Icons.account_circle_rounded),
      title: Text("Home"),
      centerTitle:true,
      backgroundColor: Colors.teal,
    ),
    body: Padding(
      padding:const EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height:10,
                width:40,
                margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                padding:EdgeInsets.all(30),
                color:Colors.white,
                child: const Text('Welcome to flutter app',style: TextStyle(
                  fontSize: 25,
                  color: Colors.purple,
                )
                ),
              ),
              Container(
                height:100,
                width:400,
                margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                padding:EdgeInsets.all(30),
                color:Colors.white,
                child: const Text('It is a Basic App',style: TextStyle(
                  fontSize: 25,
                  color: Colors.purple,
                )
                ),
              ),
              Container(
                  child: TextButton(
                    child: Text("Click Here"),
                    onPressed:(){
                      print("Text Button Tapped !! ");
                    },
                    onLongPress:(){
                      print("Long Pressed");
                    },
                )
              ),
              Container(
                  child: ElevatedButton(
                    child: Text("Click Here"),
                    onPressed:(){
                      print("Elevated Buttpn Tapped");
                    },
                    onLongPress:(){
                      print("Long Pressed");
                    },
                )
              ),
              Container(
                  child: OutlinedButton(
                    child: Text("Click Here"),
                    onPressed:(){
                      print("Elevated Buttpn Tapped");
                    },
                    onLongPress:(){
                      print("Long Pressed");
                    },
                  )
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("A"),
                      Text("B"),
                      Text("C"),
                      Text("D"),
                      ElevatedButton(
                          onPressed: (){
                      },
                          child: Text("E")),
                      ElevatedButton(
                          onPressed: (){
                          },
                          child: Text("F")),
                      ElevatedButton(
                          onPressed: (){
                          },
                          child: Text("G"))
                    ],
                  ),
                ),
              ),
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
    ),
  ),
));
