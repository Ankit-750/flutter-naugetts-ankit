import 'package:flutter/material.dart';
import 'package:nauggets/Screens/FirstScreen.dart';
import 'package:nauggets/Screens/SecondScreen.dart';
import 'package:nauggets/Screens/ThirdScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}
