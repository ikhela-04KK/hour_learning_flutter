// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.deepPurple[300],
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.deepPurple[200],
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.deepPurple[100],
              )
            ],
            ), 
    );
  }
}
