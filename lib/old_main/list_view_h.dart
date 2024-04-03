
// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ListViewWidgetHor extends StatelessWidget {
  ListViewWidgetHor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 400,
                color: Colors.deepPurple[400],
                child: Center(
                  child: Text("koffi"),
                ),
              ),
              Container(
                width: 400,
                color: Colors.deepPurple[300],
                child: Center(
                  child: Text("kan"),
                ),
              ),
              Container(
                width: 400,
                color: Colors.deepPurple[200],
                child: Center(
                  child: Text("marc"),
                ),
              ),
            ],
          ),
    );
  }
}
