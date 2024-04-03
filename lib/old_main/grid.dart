

// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: GridView.builder(
              itemCount: 64,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:4
              ),
              itemBuilder: (context, builder)=>Container(
              color: Colors.deepPurple[400],
              margin: EdgeInsets.all(2),
            )
          ),
    );
  }
}
