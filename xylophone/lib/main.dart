import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget{
  playlocal(int value) async{
    AudioCache audioCache = AudioCache();
    final player = AudioPlayer();
    player.play(UrlSource("note$value.wav"));
  }
  Expanded bgc({required int sound , required Color color}){
    return Expanded(
      child: TextButton(
        child:Text(" "),
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed:(){
          playlocal(sound);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              bgc(sound:1 , color:Colors.red),
              bgc(sound:2 , color:Colors.orange),
              bgc(sound:3 , color:Colors.yellow),
              bgc(sound:4 , color:Colors.green),
              bgc(sound:5 , color:Colors.teal),
              bgc(sound:6 , color:Colors.blue),
              bgc(sound:7 , color:Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}