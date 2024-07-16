import 'package:flutter/material.dart';
import 'package:hire_app/splash_screen.dart';

void main() {
  dialogBox();
  runApp(

    MyApp(),
//      MyApp()

  );
}
void dialogBox() {
//  EasyLoading.instance
//    ..backgroundColor = Colors.grey.withOpacity(0.4)
//    ..progressColor = green
//    ..loadingStyle = EasyLoadingStyle.custom
//    ..radius = 10
//    ..textColor = green
//    ..indicatorColor = green
//    ..dismissOnTap = true
//    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
//    ..indicatorSize = 100;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//      builder:  EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}

