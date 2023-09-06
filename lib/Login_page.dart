import 'package:flutter/material.dart';
import 'package:flutter_application_2/util/rutes.dart';
 class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(

      child: Column(
        children: [
        Image.asset(
          "assets/images/login_images.png",
        fit: BoxFit.cover),
        SizedBox(
          height: 20.0,
        )
        ,Text("welcome",
        style: TextStyle(
          fontSize: 22,
        fontWeight: FontWeight.bold,
        ),
        ) ,SizedBox(
          height: 20.0,
          
        ),
        
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
          child: Column(children:
          [
          TextFormField(decoration: InputDecoration(
            hintText: " Enter UserName",
          labelText: "Username" ),), 
          TextFormField(
            obscureText: true,
            
            decoration: InputDecoration(
  
            hintText: " Enter Password",
          labelText: "Username" )
          ),
          SizedBox(
          height: 20.0,
          
        ),
       ElevatedButton(
        child: Text("login"),
       style: TextButton.styleFrom(minimumSize:Size(150,40) ),
       onPressed: () {
        Navigator.pushNamed(
          context, MyRoutes.homeRoute);
       },
       ),
          ]
        ),
        ),
        
      ],
      )
    ));
  }
}