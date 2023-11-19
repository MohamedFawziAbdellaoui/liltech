import 'package:flutter/material.dart';
import 'package:mainapp/Customized/Background.dart';
import 'package:mainapp/Customized/CustomTextField.dart';
import 'package:mainapp/Screens/HomePage.dart';
import 'package:mainapp/Screens/SignUpScreen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
  static String id = "SignInScreen";
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Background(
            child: Form(
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 220,
                  ),
                  CustomTextField(
                    text: "Email",
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CustomTextField(
                    text: "Password",
                  ),
                  Positioned(
                    left: 200,
                    child: Text(
                      "Forgot password",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage.id);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(80.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't Have an account?",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SignUpScreen.id);
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
