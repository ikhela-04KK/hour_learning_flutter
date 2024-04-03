// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class ShadowClickContainer extends StatelessWidget {
  // initialiser les instances de la classe
  final Widget child; 
  final Function onTap; 

  // n'oubliez pas de mettre les required sinon il renvenra une errreur 
  const ShadowClickContainer({required this.child, required this.onTap,super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () 
      {
        onTap();
      },
      
      child: child
    );
  }
}


class SettingPage extends StatelessWidget{
  SettingPage({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Stage Learing"),
          centerTitle: true,
        ),
        body:Center(
            child: ShadowClickContainer(
              onTap:(){
                Navigator.pushNamed(context, "/grid");
              },
              child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber[500], 
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // position de l'ombre dans le conteneur
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                  Icon(
                    Icons.leaderboard_rounded, 
                    size: 40,
                    ), 
                  Text(
                    "Grid Learning", 
                    style:TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      fontFamily: "JetbrainsMono"
                    )
                    )
                ],
              ),
            ),
            )
        )
      );
  }
}

