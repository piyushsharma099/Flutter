import 'package:flutter/material.dart';

void main() => runApp
  (MyApp());
void _handleButtonPress() {
  // Handle button press here
  print('Button pressed!');
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            leading: Icon(Icons.account_circle_rounded),
          title: Text("facebook"),
          centerTitle:true,
          backgroundColor: Colors.blue[800],
          actions: [
            Icon(Icons.more_vert),
          ],
        ),
        body: Padding(
        padding:const EdgeInsets.all(8.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.symmetric(vertical:40,horizontal:10),
                    child: Text("Welcome To facebook",
                    style: TextStyle(
                      fontFamily:'BrunoAceSC',
                      fontSize:20,
                      color:Colors.blue[800],
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.symmetric(vertical:10,horizontal:10),
                    child: CircleAvatar(
                      radius:50.0,
                      backgroundImage:AssetImage("assets/images/User Logo.png")
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(30,20,0,10),
                    color:Colors.blue[800],
                    margin:EdgeInsets.symmetric(vertical:30,horizontal:10),
                    child: Row(
                      children:<Widget>[
                        Icon(
                            Icons.account_circle,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width:10,
                        ),
                        Text(
                          "USERNAME",
                          style:TextStyle(
                            color:Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(30,20,0,10),
                    color:Colors.blue[800],
                    margin:EdgeInsets.symmetric(vertical:5,horizontal:10),
                    child: Row(
                      children:<Widget>[
                        Icon(
                            Icons.lock,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width:10,
                        ),
                        Text(
                            "PASSWORD",
                          style:TextStyle(
                            color:Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10,20,10,10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        ElevatedButton(
                            onPressed:(){},
                            style:ElevatedButton.styleFrom(
                              primary: Colors.green
                            ),
                            child:Text("Sign up")),
                        ElevatedButton(onPressed:(){},
                            style:ElevatedButton.styleFrom(
                                primary: Colors.green
                            ),
                            child:Text("Login")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.chat,
          ),
          onPressed: _handleButtonPress,
        ),
      ),
    );
  }
}
