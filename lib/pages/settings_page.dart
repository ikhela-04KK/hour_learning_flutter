// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget{
  SettingPage({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Page"),
      ),
      body: Center(child: Text("Setting Page")),
    );
  }
}