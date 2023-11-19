import 'package:flutter/material.dart';
import 'package:mainapp/Customized/Background.dart';
import 'package:mainapp/Customized/CustomTextField.dart';
import 'package:mainapp/Screens/SignInScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
  static String id = "SignUpScreen";
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Background(
            child: Form(
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 90),
                  CustomTextField(text: "First name"),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(text: "Last name"),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(text: "Nick name"),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(text: "Email"),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(text: "Password"),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(text: "Confirm Password"),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "SignUp",
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
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Already Have an account?",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SignInScreen.id);
                        },
                        child: Text(
                          "Sign In",
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
