import 'package:flutter/material.dart';
import 'package:lil/Customized/Background.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
  static String id = "Chat";
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Background(
            child:  Container(),
          ),
        ), 
      ),
    );
  }
}
