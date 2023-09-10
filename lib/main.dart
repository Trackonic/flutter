import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/util/rutes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/login_page.dart';
void main() {
  runApp(MyWidget());
  
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home:HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryTextTheme: GoogleFonts.latoTextTheme()
        ,),
         
      
      darkTheme: ThemeData(
        brightness: Brightness.light),
        initialRoute:  MyRoutes.homeRoute,
        routes:{
          "/":(context) => LoginPage(),
          MyRoutes.homeRoute:(context) => HomePage(),
          MyRoutes.loginRoute:(context) => LoginPage(),
      
        },
      
    );
    
   
    
  }
  
}
