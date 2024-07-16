import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.91,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff152238),
          title: Text('Add Post',style: TextStyle(
              color: Colors.white
          ),),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              child: TextFormField(
                maxLines: 15,
                decoration: const InputDecoration(
                  hintText: 'Write Something...',
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),

              ),
            ),

            GestureDetector(
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
                  child: Text('Post',style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),),
                ),
              ),
              onTap: (){

              },
            ),


          ],
        )
      ),
    );
  }
}
