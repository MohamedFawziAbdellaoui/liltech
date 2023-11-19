import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lil/Screens/Chat.dart';
import 'package:lil/Screens/Clubs.dart';
import 'package:lil/Screens/Documents.dart';
import 'package:lil/Screens/HomePage.dart';
import 'package:lil/Screens/Questions.dart';
import 'package:lil/Screens/SignInScreen.dart';
import 'package:lil/Screens/SignUpScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
