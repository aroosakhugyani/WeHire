import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*.91,
        color:Colors.white,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xff152238),
            title: Text('Profile',style: TextStyle(
              color: Colors.white
            ),),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [



                  Container(
                    margin: EdgeInsets.only(left: 30,top: 10,bottom: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage('images/boy.png'),

                            ),
                            Positioned(
                                bottom: 5,
                                right: 0,
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.purple,
                                    child: Center(
                                      child: Icon(Icons.camera_alt,color: Colors.white,size: 12,),
                                    ),
                                  ),
                                )
                            )
                          ],
                        )
                      ],
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.only(right: 20,left: 20,top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Icon(Icons.person,color: Colors.grey,size: 30,),
                          ),
                        ),
                        Expanded(
                          flex: 12,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('Name',style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'SF Pro Display',
                                      fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width*.7,
                                    height: MediaQuery.of(context).size.height*.05,
                                    child: TextFormField(
                                      maxLines: 1,
                                      maxLength: 30,
                                      initialValue: 'Rici Mileon',
                                      decoration: InputDecoration(
                                        hintText: 'Enter Name',
                                        border: InputBorder.none,
                                        counterText: ''
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 20,left: 20,top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Icon(Icons.email,color: Colors.grey,size: 25,),
                          ),
                        ),
                        Expanded(
                          flex: 12,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('Email',style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'SF Pro Display',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width*.7,
                                    height: MediaQuery.of(context).size.height*.05,
                                    child: TextFormField(
                                      enabled: false,
                                      maxLines: 1,
                                      maxLength: 30,
                                      initialValue: 'ricimileon@gmail.com',
                                      decoration: InputDecoration(
                                          hintText: 'Enter Email',
                                          border: InputBorder.none,
                                          counterText: ''
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.only(right: 20,left: 20,top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Icon(Icons.location_on,color: Colors.grey,),
                          ),
                        ),
                        Expanded(
                          flex: 11,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('Location',style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'SF Pro Display',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ],
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: Container(
                                      margin: EdgeInsets.only(right: 10),
                                      child: Text('ricimileon@gmail.com',maxLines: 1,style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'SF Pro Display',
                                      ),),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Icon(Icons.navigate_next,color: Colors.grey,),
                          ),
                        )
                      ],
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal : 20.0,vertical: 20),
                    child: Row(
                      children: [
                        Text('Bio',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width*.9,
                    height: MediaQuery.of(context).size.height*.05,
                    child: TextFormField(
                      maxLines: 1,
                      maxLength: 30,
                      decoration: InputDecoration(
                          hintText: 'Enter Bio',
                          counterText: ''
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
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
                        child: Text('Save',style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),),
                      ),
                    ),
                    onTap: (){

                    },
                  ),


                  Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 10),
                    child: Row(
                      children: [
                        InkWell(
                          child:  Text('Logout',style: TextStyle(
                              color: Colors.red,
                              fontFamily: 'SF Pro Display',
                              fontSize: 20
                          ),),
                          onTap: (){

//                            dialogBoxUniversal(context, 'splashlogo', 'You want to Log Out', (){
//                              users.deleteUser();
//                              users.getUser().then((value) {
//                                print(value.email);
//                                print(value.id);
//                              });
//                              _googleSignIn.signOut();
//                              plugin.logOut();
//                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
//                            });
                          },
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        )
    );
  }
}
