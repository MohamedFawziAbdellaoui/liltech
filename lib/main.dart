import 'package:flutter/material.dart';
import 'package:mainapp/Screens/Chat.dart';
import 'package:mainapp/Screens/Clubs.dart';
import 'package:mainapp/Screens/Documents.dart';
import 'package:mainapp/Screens/HomePage.dart';
import 'package:mainapp/Screens/Questions.dart';
import 'package:mainapp/Screens/SignInScreen.dart';
import 'package:mainapp/Screens/SignUpScreen.dart';

void main() {
  runApp(MyApp());
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
      initialRoute: SignInScreen.id,
      routes: {
        SignInScreen.id: (context) => SignInScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        HomePage.id: (context) => HomePage(),
        Documents.id: (context) => Documents(),
        Chat.id: (context) => Chat(),
        Questions.id: (context) => Questions(),
        Clubs.id: (context) => Clubs()
      },
    );
  }
}
