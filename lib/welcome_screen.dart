import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire_app/bottom_navbar.dart';
import 'package:hire_app/login_screen.dart';
import 'package:hire_app/signup_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/logo.png',scale: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('WEHIRE',style: TextStyle(
                      color:  Color(0xff152238),
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                  ),)
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                width: MediaQuery.of(context).size.width*.5,
                height: MediaQuery.of(context).size.height*.01,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        // 10% of the width, so there are ten blinds.
                        colors: [
                          Colors.cyanAccent,
                          Colors.deepPurpleAccent
                        ],
                        tileMode: TileMode.clamp
                      // red to yello/ repeats the gradient over the canvas
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('JOB PORTAL APP',style: TextStyle(
                      color:  Color(0xff152238),
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),)
                ],
              ),
              Image.asset('images/welcomeicon.png',scale: 14,),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: MediaQuery.of(context).size.width*.8,
                  height: MediaQuery.of(context).size.height*.07,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          // 10% of the width, so there are ten blinds.
                          colors: [
                            Colors.cyanAccent,
                            Colors.deepPurpleAccent
                          ],
                          tileMode: TileMode.clamp
                        // red to yello/ repeats the gradient over the canvas
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Center(
                    child: Text('Login',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),),
                  ),
                ),
                onTap: (){

                  Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: MediaQuery.of(context).size.width*.8,
                  height: MediaQuery.of(context).size.height*.07,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Center(
                    child: Text('Sign Up',style: TextStyle(
                        color: Colors.purple,
                        fontSize: 18
                    ),),
                  ),
                ),
                onTap: (){

                  Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => SignupScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
