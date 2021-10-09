import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easy_auto/core/app_restart.dart';
import 'package:flutter_easy_auto/home/home_screen.dart';
import 'package:flutter_easy_auto/login/login_screen.dart';

class InterfaceScreen extends StatefulWidget {
  InterfaceScreen({Key? key}) : super(key: key);

  @override
  _InterfaceStateScreen createState() => _InterfaceStateScreen();
}

class _InterfaceStateScreen extends State<InterfaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RestartWidget(
      child: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          log(snapshot.toString());
          print(FirebaseAuth.instance.authStateChanges());
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return HomeScreen();
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Algo de errado nao esta certo'),
            );
          } else {
            return LoginScreen();
          }
        },
      ),
    ));
  }
}
