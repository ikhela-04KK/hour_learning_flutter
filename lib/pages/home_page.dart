// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:ikpay/pages/counter_page.dart';

class HomePage extends StatelessWidget{
  HomePage({super.key});

  @override
  Widget build (BuildContext context){
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Home Page"),
    //   ),
    //   body: Center(
    //     child: 
    //     Text("Home Page")
    //   ),
    // );
    return MaterialApp(
      home: CounterPage(),
    );
  }
}