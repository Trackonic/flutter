import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/util/rutes.dart';
import 'package:flutter_application_2/widget/theme.dart';
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
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
         
      
      initialRoute:MyRoutes.homeRoute ,
        routes:{
          "/":(context) => LoginPage(),
          MyRoutes.homeRoute:(context) => HomePage(),
          MyRoutes.loginRoute:(context) => LoginPage(),
      
        },
      
    );
    
   
    
  }
  
}
