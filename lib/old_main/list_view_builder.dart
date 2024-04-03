
// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class ListViewWidgetBuilder extends StatelessWidget {
  ListViewWidgetBuilder({super.key});
    final List<String> names = ["Laura", "Mackenzie", "Stanislas"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(names[index]),
            ),
          ),
    );
  }
}
