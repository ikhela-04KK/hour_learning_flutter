import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{
  List toDoList = []; 

  // creer une reference à ta boîte 
  
  final _todoBox = Hive.box("todoBox"); 

  // stocker des données par defaut dans la boîte 
  void createInitialData(){
    toDoList =[
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // chargé les données associés à TODOLIST associé à la boîte todoBox
  void loadData(){
    toDoList = _todoBox.get("TODOLIST");
  }

  // modifié la base de donné
  void updateDatabase(){
    _todoBox.put("TODOLIST", toDoList); 
  }
  
  }

