// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'Profile_page.dart';
import 'home_page.dart';
import 'settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  // cela permet de garder la trace de la page actuelle
  int _selectedIndex = 0; 

    // modifié l'inex qui a été sélectionné 
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  // create a list of page 
  final List _pages =[
    HomePage(), 
    ProfilePage(), 
    SettingPage()
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first page"),
      ),

      // in drawer 
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[500],
        child: Column(
          children: <Widget>[
            DrawerHeader(
                child: Icon(
              Icons.favorite,
              size: 48,
            )),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                style: TextStyle(fontFamily: "JetBrainMono", fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                "Seetings",
                style: TextStyle(fontFamily: "JetBrainMono", fontSize: 25),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/secondpage");
              },
            )
          ],
        ),
      ),

      // in body 
      body:  _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), 
              label: "Home"
            ), 
            BottomNavigationBarItem(
              icon: Icon(Icons.person), 
              label: "Profile"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings), 
              label: "Settings"
            ),
        ],
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Go to second page"),
      //     onPressed: () => {
      //       Navigator.pushNamed(
      //         context,
      //         '/secondpage'
      //       )
      //     },
      //   ),
      // ),
    );
  }
}
