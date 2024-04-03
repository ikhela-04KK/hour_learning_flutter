// ignore_for_file: prefer_const_constructors, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTitle extends StatelessWidget {
  // create instance for my variable

  final String taskName;
  Function(bool?)? onChanged;
  final bool taskCompleted;

  // donne à la fonctionnle contexte de construction de l'application
  Function(BuildContext?)? deleteFunction;

  ToDoTitle(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged,
      required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(25.0),
        child: Slidable(
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: deleteFunction,
                icon: Icons.delete,
                backgroundColor: Colors.red.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
            ],
          ),
          child: Container(
            // padding: EdgeInsets.all(24.0),
            padding: EdgeInsets.only(
                left: 25.0, right: 25.0, top: 25.0, bottom: 25.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Checkbox(
                    value: taskCompleted,
                    onChanged: onChanged,
                    activeColor: Colors.black,
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Text(
                    taskName,
                    style: TextStyle(
                        fontFamily: "JetbrainsMono",
                        decoration: taskCompleted
                            ? TextDecoration
                                .lineThrough // taskcompleted  = true alors souligné le texte
                            : TextDecoration.none),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.yellow),
          ),
        ));
  }
}
