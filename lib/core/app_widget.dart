// import 'package:DevQuiz/home/home_page.dart';
// import 'package:DevQuiz/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easy_auto/provider/account_manager_provider.dart';
import 'package:flutter_easy_auto/splash/splash_screen.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AccountManagerProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "EasyAuto",
        home: SplashScreen(),
      ),
    );
  }
}
