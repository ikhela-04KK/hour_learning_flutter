

// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.deepPurple[400]),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.deepPurple[300],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.deepPurple[200]),
                ),
              ],
            ),// ig 
    );
  }
}
