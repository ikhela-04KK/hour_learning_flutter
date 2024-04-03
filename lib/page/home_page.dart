// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/data/database.dart';
import 'package:todo/util/dialog_box.dart';
import 'package:todo/util/todo_title.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _todoBox = Hive.box("todoBox"); 
  ToDoDatabase db = ToDoDatabase();

  @override
  void initState(){
    super.initState();
    if (_todoBox.get("TODOLIST") == null){
      db.createInitialData();
    }else {
      db.loadData();
    }
  }
  // variable de classe pour le controller pour capturer les valeurs du inputText
  final _controller = TextEditingController(); 


  // implementez une méthode pour le checkbox 
  void checkBoxChanged(bool? value  , int index){
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDatabase();

  }
    // modifier ou enregistre les données dans la base de donnée en fonction des données de la liste 

    // save a  new Task 
    void saveNewTask(){
      setState(() {
        db.toDoList.add([_controller.text, false]); 

        // Cette ligne vide le champ de texte
        _controller.clear();

        // sort de la boite de dialogue et revient à la page des task 
        Navigator.of(context).pop(); 
      });

      // assure que les données sont bien sauvegardé dans la base de donnée
      db.updateDatabase();
    }

    // deleteTask 
    void deleteTask(int index){ 
      setState(() {

        // supprime l'objet dans la boite grace à son index 
        db.toDoList.removeAt(index);
        db.updateDatabase();
      });
    }

    // create new task 
  

  // function for create a new task 
    void createNewTask() {
      showDialog(
        context: context, 
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
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
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTitle(
            taskName: db.toDoList[index][0], 
            taskCompleted: db.toDoList[index][1], 
            onChanged: (value) =>checkBoxChanged(value, index), 
            deleteFunction:(context) => deleteTask(index),
            );
        },
      )
    );  
  }
  

}