

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire_app/login_screen.dart';
import 'package:hire_app/welcome_screen.dart';

class Splash extends StatefulWidget {
  @override
  _Splash createState() => new _Splash();
}

class _Splash extends State<Splash> {

  String userId = '';


  startTime() async {

    var duration = new Duration(seconds: 5);
    return Timer(duration, navigationPage);
  }




  void navigationPage() {
      var route = MaterialPageRoute(
          builder: (BuildContext context) => new WelcomeScreen());
      Navigator.of(context).pushReplacement(route);

  }



  @override
  Future<void> initState() {
    super.initState();

    startTime();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
          ],
        )
      ),
    );
  }
}
