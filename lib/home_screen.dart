import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home',style: TextStyle(
            color: Colors.white
          ),),
          backgroundColor: Color(0xff152238),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context,index){
                return _posts(context, index);
              }),
            )
          ],
        ),
      ),
    );
  }
  Widget _posts(context,index){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0.5,
            blurRadius: 0.5
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        CircleAvatar(
                         backgroundImage: AssetImage('images/boy.png'),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Rici Mileon',style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Dec 10,2020 01:00',style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                            ),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical :8.0),
                    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ac ultrices ante. Quisque feugiat molestie diam, venenatis congue enim fringilla sed. Morbi scelerisque ante vitae quam lobortis, et hendrerit arcu interdum. Cras et accumsan augue, eu pharetra sem. Proin a erat non libero viverra scelerisque at et nisi. Curabitur nisl nisl, molestie a pretium et, placerat vitae odio.',
                    maxLines: 4,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Center(
                        child: Text('Like',style: TextStyle(
                          color: Colors.grey
                        ),),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey)
                      ),
                     child:  Center(
                        child: Text('Inbox',style: TextStyle(
                            color: Colors.grey
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
