

// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ikpay/pages/settings_page.dart';

// class gestureDetector 



class GridWidget extends StatelessWidget {
  GridWidget({super.key});

  //  listes des noms 
  final List<String> names = ['Column', 'ListViewBuilder', 'ListViewSize', 'ListViewVer', 'Stack', 'ListViewWidgetHor'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Padding(
        padding: const EdgeInsets.all(10), 
        child:  GridView.builder(
              itemCount: names.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                
                // L'extension maximale de l'axe transversal des enfants dans la grille
                mainAxisSpacing: 20,

                // Espacement entre les enfants dans l'axe transversal (horizontal)
                crossAxisSpacing: 20,

                crossAxisCount:2
              ),
              itemBuilder: (context, index){
              String name = names[index];
              return ShadowClickContainer(
                onTap: (){
                  Navigator.pushNamed(context, "/$names");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(
                    child: Text(
                      name,
                      style: TextStyle(color: Colors.white),
                  ),
          ),
            ),
              );
          }
          ),
    )
    );
  }
}
