import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
 class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Drawer(
    child: Container(

      color: Colors.deepPurple,
    
    child: ListView(


      children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          margin:EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            accountEmail: Text("chiragbisht456@gmail.com"),
          accountName: Text("chirag bisht"),)
          ),
          ListTile(
            leading :Icon(
              CupertinoIcons.home,
            color: Colors.white,
            ),
            title: Text("profile",
             textScaleFactor: 1.0,
             style: TextStyle(
              color: Colors.white
             ))
            ,
          )
, ListTile(
            leading :Icon(
              CupertinoIcons.mail,
            color: Colors.white
            ),
            title: Text("mail",
             textScaleFactor: 1.0,
             style: TextStyle(
              color: Colors.white
             ))
            ,
          )
      ],
    ),
    ) ) ;
  }
}