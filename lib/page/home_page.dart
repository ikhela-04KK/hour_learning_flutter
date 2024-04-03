// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:todo/util/todo_title.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List TodoTile = [
    ["Make a tutorials", false], 
    ["Build your own", false], 
    ["Talk with Jesus", true],
    ["Build my social experiance",false], 
    ["Communicating with my jalaa",false], 

    
  ]; 

  // implementez une méthode pour le checkbox 
  void checkBoxChanged(bool? value  , int index){
    setState(() {
      TodoTile[index][1] = !TodoTile[index][1];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text(
          "ITodo", 
          style: TextStyle(
            fontFamily: "JetbrainsMono", 
            fontSize: 30
          ),
          ),
        backgroundColor: Colors.yellow,
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: TodoTile.length,
        itemBuilder: (context, index) {
          return ToDoTitle(
            taskName: TodoTile[index][0], 
            taskCompleted: TodoTile[index][1], 
            onChanged: (value) =>checkBoxChanged(value, index));
        },
      )
    );  
  }
}