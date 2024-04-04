// ignore_for_file: prefer_const_constructors

import 'package:appdrawerflutter/view/splashscreen/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBQkzbzfOoKKdNTvUwjiqEPh1PdQdcjrjY",
          appId: "1:735922955268:android:f57d75586a19b31d14c151",
          messagingSenderId: "",
          projectId: "fir-sample-4ea83",
          storageBucket: "fir-sample-4ea83.appspot.com"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
