import 'package:flutter/material.dart';
void main() {
  runApp(MyWidget());
  
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Container(
      child: Text("hello my name is chirag bisht"),
    ));
  }
}
