import 'package:flutter/material.dart';
import 'package:flutter_easy_auto/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AppWidget());
}
