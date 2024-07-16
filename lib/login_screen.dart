import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire_app/bottom_navbar.dart';
import 'package:hire_app/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              // 10% of the width, so there are ten blinds.
              colors: [
                const Color(0xff152238),
                const Color(0xff22303C)
              ],
              tileMode: TileMode.clamp
              // red to yello/ repeats the gradient over the canvas
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical : 100.0,horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('LOGIN',style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white
                  ),
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey,),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                child: TextFormField(
                  obscureText: true,
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey,),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),

                ),
              ),


              InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 80),
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
                    child: Text('Sign In',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),),
                  ),
                ),
                onTap: (){

                  Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => BottomNavBar()));
                },
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have Account?',style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),),
                  InkWell(
                    child: Text(' Signup',style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 16
                    ),),
                    onTap: (){
                      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => SignupScreen()));
                    },
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
