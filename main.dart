import 'package:attweek3/pagetwo.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/settings': (BuildContext context) => new  Pagetwo(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
     body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/PubBG.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Center(
              
               child: ElevatedButton(
          child: Text('Moving On'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pagetwo()),
            );
          },
        )
              
            ),
          ),
          
          
        ),
    );
  }
}
