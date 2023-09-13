import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyTheme{
    static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.purple,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        appBarTheme: AppBarTheme( color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        
        )
        ,);


        static ThemeData darkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.purple,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        appBarTheme: AppBarTheme( color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        
        )
        ,);


}