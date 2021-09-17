// import 'package:DevQuiz/home/home_page.dart';
// import 'package:DevQuiz/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easy_auto/splash/splash_screen.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "EasyAuto",
      home: SplashScreen(),
    );
  }
}
