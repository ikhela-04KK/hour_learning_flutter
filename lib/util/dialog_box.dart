// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:todo/util/custom_button.dart';

class DialogBox extends StatelessWidget {

  final dynamic controller; 

  // to active save and cancel data 
  VoidCallback onSave; 
  VoidCallback onCancel;

  DialogBox({super.key , this.controller, required this.onSave , required this.onCancel});

  

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:Colors.yellow,

      // content contient le corps de la boîte de dialig qui sera centrer
      content: Container(
        height: 120,
        child: Column(

          // placer de l'espace entre les enfant , ainsi avant le 1er élément et après le dernier élément 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[
            TextField(

              controller : controller,
              decoration: InputDecoration(
                // mettre une border autour de l'input 
                border: OutlineInputBorder(),
                hintText: "Add a new task"
              ),
            ), 

            // combiner column + Row 
            Row(
              // pour mettre le boutton saved et le cancel à droite
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                // save button
                CustomButton(
                  text: "Save", 
                  onPressed: onSave
                ),

                // mettre de l'espace entre les bouttons save et cancel 
                SizedBox(width:8), 

                CustomButton(
                  text: "Cancel", 
                  onPressed: onCancel
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}