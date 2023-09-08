import 'package:flutter/material.dart';
import 'package:flutter_application_2/util/rutes.dart';
 class LoginPage extends StatefulWidget {
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name ="";
  bool changebutton = false ;

  final _formkey = GlobalKey<FormState>();
  
 movetohome(BuildContext context) async{
  if (_formkey.currentState!.validate()){
   setState(() {
                 changebutton =true;
              });
              await Future.delayed(Duration(seconds :1));
              await Navigator.pushNamed(
              context, MyRoutes.homeRoute);    
              setState(() {
                changebutton =false;
                
              });
  }
 }
  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.white,
      child:SingleChildScrollView(

      child: Form(
        key: _formkey,

        child: Column(
          children: [
          Image.asset(
            "assets/images/login_images.png",
          fit: BoxFit.cover),
          SizedBox(
            height: 20.0,
          )
          ,Text("welcome $name",
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
            TextFormField(
              decoration: InputDecoration(
              hintText: " Enter UserName",
            labelText: "Username" ,
                          ), 
            validator: (ValueKey){
              if(ValueKey!.isEmpty)
              {
               return "username cannot be empty";
              }
            },
            onChanged:(value){
              name=value;
              setState(() {
                
              });
            }
            
            ),
           
            TextFormField(
      
              obscureText: true,
              
              decoration: InputDecoration(
        
              hintText: " Enter Password",
            labelText: "Password" 
            ),
             validator: (value){
              if(value!.isEmpty){
                return "password cannot be empty";
              }
              else if( value.length <6){
                return "password lenght should be alleat 6";
              }
              
              return null;
            }
            ),
            
            
            SizedBox(
            height: 20.0,
            
          ),
      
          Material(
            color:    Color.fromARGB(255, 43, 5, 110),
               borderRadius: BorderRadius.circular(changebutton ? 20 :8),
      
      
            child: InkWell(
              onTap: ()=>movetohome(context)
                  ,
              child: AnimatedContainer(
                
                duration:Duration(seconds:1) ,
                width: changebutton? 50 : 150,
                height: 50,
                
                alignment: Alignment.center,
                child:  changebutton ?
                  Icon(
                    Icons.done,
                    color:Colors.amber,
                  ):
                  Text("login",
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18),
                )
                // decoration: BoxDecoration( color:
                //  Color.fromARGB(255, 43, 5, 110),
                //  borderRadius: BorderRadius.circular(changebutton ? 20 :8)
                //  ),
              ),
            ),
          ),
        //  ElevatedButton(
        //   child: Text("login"),
        //  style: TextButton.styleFrom(minimumSize:Size(150,40) ),
        //  onPressed: () {
        //   Navigator.pushNamed(
        //     context, MyRoutes.homeRoute);
        //  },
        //  ),
            ]
          ),
          ),
          
        ],
        ),
      )
    ));
  }
}