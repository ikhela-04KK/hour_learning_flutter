// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // crée des listes à la demande oubien liste personnalisé
  List names = ["Laura", "Mackenzie", "Stanislas"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // backgroundColor: Colors.deepPurple[200],
          // appBar: AppBar(
          //     title: Text(
          //       'First Application',
          //       style: TextStyle(color: Colors.white),
          //     ),
          //     backgroundColor: Colors.deepPurple[900],
          //     centerTitle: true, // centrer le texte qui dans le AppBar
          //     elevation: 0,
          //     leading: IconButton(
          //       icon: Icon(Icons.menu),
          //       onPressed: () => {print("button is pressed")},
          //       color: Colors.white,
          //     ),
          //     actions: <Widget>[
          //       IconButton(
          //         icon: const Icon(Icons.logout),
          //         tooltip: 'Open shopping cart',
          //         onPressed: () {
          //           // handle the press
          //           print("button is pressed");
          //         },
          //         color: Colors.white,
          //       ),
          //     ]),
          // body: Center(
          //   child: Container(
          //     height: 300,
          //     width: 300,
          //     padding: EdgeInsets.all(25),
          //     decoration: BoxDecoration(
          //         color: Colors.deepPurple[900],
          //         borderRadius:
          //             BorderRadius.circular(20) //  sert à décorer la boxe
          //         ),
          //     // child: Text(
          //     //   "Koffi Kan Marc",
          //     //   style: TextStyle(
          //     //     color: Colors.white,
          //     //     fontSize: 28,
          //     //     fontFamily: "JetBrainsMono",
          //     //     fontWeight: FontWeight.bold
          //     //     )
          //     //   ),
          //     child: Icon(
          //       Icons.favorite,
          //       color: Colors.white,
          //       size: 64,
          //     ),
          //   ),
          // ),
          // body: ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: <Widget>[
          //     Container(
          //       width: 400,
          //       color: Colors.deepPurple[400],
          //       child: Center(
          //         child: Text("koffi"),
          //       ),
          //     ),
          //     Container(
          //       width: 400,
          //       color: Colors.deepPurple[300],
          //       child: Center(
          //         child: Text("kan"),
          //       ),
          //     ),
          //     Container(
          //       width: 400,
          //       color: Colors.deepPurple[200],
          //       child: Center(
          //         child: Text("marc"),
          //       ),
          //     ),
          //   ],
          // ),
          //   body: Column(
          //     children: <Widget>[
          //       Expanded(
          //         flex: 1,
          //         child: Container(color: Colors.deepPurple[400]),
          //       ),
          //       Expanded(
          //         flex: 2,
          //         child: Container(
          //           color: Colors.deepPurple[300],
          //         ),
          //       ),
          //       Expanded(
          //         flex: 1,
          //         child: Container(color: Colors.deepPurple[200]),
          //       ),
          //     ],
          //   ),
          // ),
          body: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(names[index]),
            ),
          ),
        )
      );
  }
}

// class for home
// class HomeView extends StatelessWidget{
//   @override
//   Widget build(BuildContext){
//     return
//   }
// }
