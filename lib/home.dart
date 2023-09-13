import 'package:flutter/material.dart';
import 'package:flutter_application_2/widget/drawer.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
         title: Text(" Catalogue App"),
        ),
        body: Center(
    child: Container(
      child: Text("hello my name is chirag "),
    ),
    ),
    drawer: MyDrawer(),
    );
  }
}