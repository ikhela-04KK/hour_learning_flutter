
// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget{
  SecondPage({super.key});

  @override
  Widget build (BuildContext context){ 
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
      ), 
    );
  }
}
