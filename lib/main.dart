// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/page/home_page.dart';

void main() async  {

  // verifie si tous services et framework sont bien lancés avant l'execution de l'application
  // WidgetsFlutterBinding.ensureInitialized();

  // initializer hive 
  await Hive.initFlutter(); 
  
  // creer ma premeire boite pour stocker mes données 
  await Hive.openBox("todoBox");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        // colorSchemeSeed: Colors.yellow, 
        useMaterial3: false,
        primarySwatch: Colors.yellow
      ),
    );
  }
}
