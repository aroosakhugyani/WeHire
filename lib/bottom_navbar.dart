import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hire_app/home_screen.dart';
import 'package:hire_app/inbox_screen.dart';
import 'package:hire_app/post_screen.dart';
import 'package:hire_app/profile_screen.dart';


class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.home,color: Colors.white,),
            Icon(Icons.message,color: Colors.white,),
            Icon(Icons.add,color: Colors.white,),
            Icon(Icons.person,color: Colors.white,),
          ],
          color: Color(0xff152238),
          buttonBackgroundColor: Color(0xff152238),
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [

                  _page==0?
                  HomeScreen():
                  _page==1?
                  InboxScreen():
                  _page==2?
                  PostScreen():
                  _page==3?
                  ProfileScreen():
                  null


                ],
              ),
            )
        ));
  }
}