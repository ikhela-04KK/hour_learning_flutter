// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controllerUser = TextEditingController();

  String gr = ""; 
  void greetUser (){
    String gretting = controllerUser.text;
    setState(() {
      gr = "hello $gretting";
    });
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Center(
        child: Padding(
          padding:EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(gr),
              TextField(
                controller: controllerUser,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your username"
                ),
              ),
              ElevatedButton(
                onPressed: greetUser, 
                child: Text("Type Me"),
              )
            ],
          ),
          )
        ),
    );
  }
}