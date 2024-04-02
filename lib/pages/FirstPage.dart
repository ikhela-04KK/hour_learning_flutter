
// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:ikpay/pages/SecondPage.dart';

class FirstPage extends StatelessWidget{
  FirstPage({super.key});

  @override
  Widget build (BuildContext context){ 
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
      ), 
      body: Center(
        child: ElevatedButton(
          child: Text("Go to second page"),
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage())
            )
          },
        ),
      ),
    );
  }
}
