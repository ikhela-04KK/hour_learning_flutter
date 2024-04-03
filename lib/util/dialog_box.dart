import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {

 


  const DialogBox({super.key});

  

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
              decoration: InputDecoration(
                // mettre une border autour de l'input 
                border: OutlineInputBorder(), 
                hintText: "Add New Task"
              ),
            ), 

            // combiner column + Row 
            Row(
              // pour mettre le boutton saved et le cancel à droite
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                
              ],
            )
          ],
        ),
      ),
    );
  }
}