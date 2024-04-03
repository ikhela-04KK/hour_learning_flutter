// // ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TstOne extends StatelessWidget {
  TstOne({super.key});



  // crée des listes à la demande oubien liste personnalisé
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
            title: Text(
              'First Application',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.deepPurple[900],
            centerTitle: true, // centrer le texte qui dans le AppBar
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => {print("button is pressed")},
              color: Colors.white,
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.logout),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  // handle the press
                  print("button is pressed");
                },
                color: Colors.white,
              ),
            ]),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: Colors.deepPurple[900],
                borderRadius:
                    BorderRadius.circular(20) //  sert à décorer la boxe
                ),
            child: Column(
              children: <Widget>[
                Text("Koffi Kan Marc",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontFamily: "JetBrainsMono",
                        fontWeight: FontWeight.bold)),
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 64,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
