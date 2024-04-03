// ignore_for_file: prefer_const_constructors, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

class ToDoTitle extends StatelessWidget {
  // create instance for my variable 

  final String taskName;
  Function(bool?)? onChanged; 
  final bool taskCompleted; 

  ToDoTitle({super.key, required this.taskName, required this.taskCompleted, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.all(25.0), 
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Checkbox(
                value: taskCompleted, 
                onChanged: onChanged, 
              ), 
            ),
            Expanded(
              child: Text(
                taskName, 
                style: TextStyle(
                  fontFamily: "JetbrainsMono"
                ),
              ),
            )
          ],
        ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.yellow
      ),
    )
    );
    
    
  }
}