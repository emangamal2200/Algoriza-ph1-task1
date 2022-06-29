import 'package:flutter/material.dart';
import 'package:task1_ph1_alg/layout/loginScreen.dart';
import 'package:task1_ph1_alg/layout/onboardScreen.dart';
import 'package:flutter/services.dart';
import 'package:task1_ph1_alg/layout/registerScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onBoardScreen(),
    );
  }
}
