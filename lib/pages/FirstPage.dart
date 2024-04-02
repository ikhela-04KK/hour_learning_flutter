
// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget{
  FirstPage({super.key});

  @override
  Widget build (BuildContext context){ 
    return Scaffold(
      appBar: AppBar(
        title: Text("first page"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[500],
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Icon(
                Icons.favorite, 
                size: 48,
              )
            ), 

            ListTile(
              leading: Icon(
                Icons.home, 
                color: Colors.black,
              ),
              title: Text(
                "Home", 
                style: TextStyle(
                  fontFamily: "JetBrainMono", 
                  fontSize: 25
                ),
                ),
            ), 
            ListTile(
              leading: Icon(
                Icons.settings, 
                color: Colors.black,
              ),
              title: Text(
                "Seetings", 
                style: TextStyle(
                  fontFamily: "JetBrainMono", 
                  fontSize: 25
                ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/secondpage");
                },
            )
        ],
        ),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Go to second page"),
      //     onPressed: () => {
      //       Navigator.pushNamed(
      //         context,
      //         '/secondpage'
      //       )
      //     },
      //   ),
      // ),
    );
  }
}
