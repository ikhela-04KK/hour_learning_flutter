// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:ikpay/old_main/grid.dart';
import 'pages/second_page.dart';
import 'pages/first_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // crée des listes à la demande oubien liste personnalisé

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
        routes: {
          '/firstpage': (context) => FirstPage(),
          '/secondpage': (context) => SecondPage(),
          '/grid':(context) => GridWidget()
        },
    ); 
        
  }
}
