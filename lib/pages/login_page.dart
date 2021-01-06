import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pdp_shared_preference/pages/sign_up.dart';

class LoginPage extends StatefulWidget {
  static final String id = "LoginPage";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(25, 6, 20, 6),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 40, 10, 1),
                padding: EdgeInsets.fromLTRB(10, 20, 10, 1),
                height: 245,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(begin: Alignment.center, colors: [
                      Colors.white54,
                      Colors.white54,
                      Colors.white54,
                    ])),
                child: Image(image: AssetImage("assets/images/log.png")),
              ),
              Text(
                "Welcome back!",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 4),
              Text(
                "Login in to your existant account of Q allure",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(1, 10, 1, 10),
                padding: EdgeInsets.fromLTRB(25, 10, 10, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100],
                        spreadRadius: 5,
                        offset: Offset(0.2, 0.3),
                        blurRadius: 20)
                  ],
                  color: Colors.white,
                ),
                child: TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      focusColor: Colors.blue,
                      border: InputBorder.none,
                      icon: Icon(
                        CupertinoIcons.person,
                        size: 20,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(1, 10, 1, 10),
                padding: EdgeInsets.fromLTRB(25, 10, 10, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100],
                        spreadRadius: 5,
                        offset: Offset(0.2, 0.3),
                        blurRadius: 20)
                  ],
                  color: Colors.white,
                ),
                child: TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      focusColor: Colors.blue,
                      border: InputBorder.none,
                      icon: Icon(
                        CupertinoIcons.lock_open,
                        size: 20,
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(height: 25),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue[100],
                        blurRadius: 20,
                        offset: Offset(0.2, 0.2),
                        spreadRadius: 3)
                  ],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Or connect using",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[400]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 38,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          margin: EdgeInsets.symmetric(horizontal: 11),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(59, 89, 152, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.facebook,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Facebok",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                          )),
                    ),
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                          child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.google,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Google",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      child: Text(
                        "Sign Up ",
                        style: TextStyle(
                            color: Color.fromRGBO(59, 89, 152, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, SignUp.id);
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}