import 'package:attweek3/pagethree.dart';
import 'package:flutter/material.dart';

class Pagetwo extends StatelessWidget {
  @override
Widget build(BuildContext context) {
    return new Scaffold(
      
     body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pic1.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Center(
              
               child: ElevatedButton(
          child: Text('Rule'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pagethree()),
            );
          },
        )
              
            ),
          ),
          
          
        ),
    );
  }
}