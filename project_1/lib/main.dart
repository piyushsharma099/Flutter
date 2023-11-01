import 'package:flutter/material.dart';

void main() => runApp
  (MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        leading: Icon(Icons.account_circle_rounded),
        title: Text("Home"),
        centerTitle:true,
        backgroundColor: Colors.purpleAccent[50],
      ),
      body: const Center(
          child:Image(
            // image: AssetImage('Image/Diamond.png'),
            image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/546/318/original/diamond-vector-logo.jpg'),
        )
      ),
    ),
));


