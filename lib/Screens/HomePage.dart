import 'package:flutter/material.dart';
import 'package:lil/Customized/Background.dart';
import 'package:lil/Screens/Chat.dart';
import 'package:lil/Screens/Clubs.dart';
import 'package:lil/Screens/Documents.dart';
import 'package:lil/Screens/Questions.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  static String id = "HomePage";
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Background(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 90,
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Chat.id);
                          },
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 110),
                                Positioned(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image(
                                      image: AssetImage("images/chat.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Chat",
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Questions.id);
                          },
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 110),
                                Positioned(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image(
                                      image: AssetImage("images/QA.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Questions",
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Documents.id);
                          },
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 110),
                                Positioned(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image(
                                      image: AssetImage("images/Docs.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Documents",
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Clubs.id);
                          },
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 110),
                                Positioned(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image(
                                      image: AssetImage("images/Club.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Clubs",
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
