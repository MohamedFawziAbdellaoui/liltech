import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lil/Customized/Background.dart';
import 'package:lil/Customized/CustomTextField.dart';
import 'package:lil/Screens/HomePage.dart';
import 'package:lil/Screens/SignInScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
  static String id = "SignUpScreen";
}

class _SignUpScreenState extends State<SignUpScreen> {
  late String userFirstName;
  late String userLastName;
  late String userNickName;
  late String userEmail;
  late String userPassword;
  late String userConfirmedPassword;

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
                  CustomTextField(
                    text: "First name",
                    target: userFirstName,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    text: "Last name",
                    target: userLastName,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    text: "Nick name",
                    target: userNickName,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(text: "Email", target: userEmail),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(text: "Password", target: userPassword),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      text: "Confirm Password", target: userConfirmedPassword),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        try {
                          UserCredential userCredential = await FirebaseAuth
                              .instance
                              .createUserWithEmailAndPassword(
                                  email: userEmail, password: userPassword);
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            print('The password provided is too weak.');
                          } else if (e.code == 'email-already-in-use') {
                            print('The account already exists for that email.');
                          }
                        } catch (e) {
                          print(e);
                        }
                        Navigator.pushNamed(context, HomePage.id);
                      },
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
