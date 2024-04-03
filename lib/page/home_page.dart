// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:todo/util/dialog_box.dart';
import 'package:todo/util/todo_title.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // variable de classe pour le controller pour capturer les valeurs du inputText
  final _controller = TextEditingController(); 

  List todoList = [
    ["Make a tutorials", false], 
    ["Build your own", false], 
    ["Talk with Jesus", true],
    ["Build my social experiance",false], 
    ["Communicating with my jalaa",false], 
  ]; 

  // implementez une méthode pour le checkbox 
  void checkBoxChanged(bool? value  , int index){
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  // function for create a new task 
    void createNewTask() {
      showDialog(
        context: context, 
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: (){},
            onCancel: () => Navigator.of(context).pop(),
          );
        }
      );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],

      //  creer un boutton flottant pour l'élément
      floatingActionButton:FloatingActionButton(
        onPressed: createNewTask, 
        child: Icon(Icons.add),
      ),

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
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return ToDoTitle(
            taskName: todoList[index][0], 
            taskCompleted: todoList[index][1], 
            onChanged: (value) =>checkBoxChanged(value, index));
        },
      )
    );  
  }
  

}