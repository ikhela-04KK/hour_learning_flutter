

// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ListViewWidgetSize extends StatelessWidget {
  ListViewWidgetSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: 20
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    print("on tap");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[200],
                        borderRadius: BorderRadius.circular(20)),
                    height: 300,
                    width: 300,
                    child: Center(
                      child: Text(
                        "Tap me",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "JetBrainMono",
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Center(
                child: GestureDetector(
                  onTap: () {
                    print("on tap");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[400],
                      borderRadius: BorderRadius.circular(20)
                    ),
                    height: 300,
                    width: 300,
                    child: Center(
                      child: Text(
                        "Tap me",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "JetBrainMono",
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Center(
                child: GestureDetector(
                  onTap: () {
                    print("on tap");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[700],
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 300,
                    width: 300,
                    child: Center(
                      child: Text(
                        "Tap me",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "JetBrainMono",
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
    );
  }
}
