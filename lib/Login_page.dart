import 'package:flutter/material.dart';
 class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Material(

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
       style: TextButton.styleFrom(),
       onPressed: () {
        print("hi chirag");
       },
       ),
          ]
          ),
        ),
        
      ],)
    );
  }
}