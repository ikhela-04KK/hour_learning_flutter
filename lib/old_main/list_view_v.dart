
          
          

// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ikpay/w_container/TapMe.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({super.key});
    final List<Color> colors = [
    Colors.deepPurple[100]!,
    Colors.deepPurple[400]!,
    Colors.deepPurple[900]!,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              for(Color color in colors)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: TapMe(
                    color: color,
                    onTap: (){
                      print("on tap");
                    },
                  ),
                )
              
            ],
          ),
    );
  }
}
