import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text("bruh moment"),
        ),
        body: Center(
    child: Container(
      child: Text("hello my name is chirag "),
    ),
    ),
    drawer: Drawer(),
    );
  }
}