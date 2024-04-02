// ce widget permet de créer des container automatique 

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart'; 

class TapMe extends StatelessWidget{
  final Color? color; 
  final void Function()? onTap; 

  const TapMe({
    super.key,
    this.color, 
    this.onTap,
  });
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 300,
        width: 350,
        child: Center(
          child: Text(
            "Tap me", 
            style: TextStyle(
              color: Colors.white, 
              fontFamily: "JetBrainMono", 
              fontSize: 34, 
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
