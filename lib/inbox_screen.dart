import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Inbox',style: TextStyle(
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
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*.1,
          decoration: BoxDecoration(
              color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal : 10.0,vertical: 2),
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
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage('images/boy.png'),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Rici Mileon',style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),),
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
                  flex: 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical :8.0,horizontal: 10),
                        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ac ultrices ante. Quisque feugiat molestie diam, venenatis congue enim fringilla sed. Morbi scelerisque ante vitae quam lobortis, et hendrerit arcu interdum. Cras et accumsan augue, eu pharetra sem. Proin a erat non libero viverra scelerisque at et nisi. Curabitur nisl nisl, molestie a pretium et, placerat vitae odio.',
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
