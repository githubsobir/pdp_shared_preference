import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdp_shared_preference/pages/login_page.dart';

class SignUp extends StatefulWidget {
  static final String id = "GignUp";

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.dark,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, LoginPage.id);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              // begin: Alignment.centerLeft,
              center: Alignment.centerLeft,
              radius: 1/2,
              colors: [

                Colors.grey[300],
                Colors.grey[300],
                Colors.grey[300],
                Colors.white,
              ],
            ),
          ),
          child: Container(
            margin: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Let's Get Started!",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Create an account to Q Allure to get all features",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          fontSize: 14),
                    ),
                  ],),),


                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 65,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[200],
                          offset: Offset(0.2, 0.2),
                          spreadRadius: 1,
                          blurRadius: 10),
                    ],
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        focusColor: Colors.blue,
                        hintText: "name",
                        border: InputBorder.none,
                        icon: Icon(
                          CupertinoIcons.person,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 65,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[200],
                          offset: Offset(0.2, 0.2),
                          spreadRadius: 1,
                          blurRadius: 10),
                    ],
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        focusColor: Colors.blue,
                        hintText: "Email",
                        border: InputBorder.none,
                        icon: Icon(
                          CupertinoIcons.mail,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 65,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[200],
                          offset: Offset(0.2, 0.2),
                          spreadRadius: 1,
                          blurRadius: 10),
                    ],
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        focusColor: Colors.blue,
                        hintText: "Phone",
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.smartphone_outlined,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 65,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[200],
                          offset: Offset(0.2, 0.2),
                          spreadRadius: 1,
                          blurRadius: 10),
                    ],
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        focusColor: Colors.blue,
                        hintText: "Password",
                        border: InputBorder.none,
                        icon: Icon(
                          CupertinoIcons.lock_open,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 65,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[200],
                          offset: Offset(0.2, 0.2),
                          spreadRadius: 1,
                          blurRadius: 10),
                    ],
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        focusColor: Colors.blue,
                        hintText: "Confirm Password",
                        border: InputBorder.none,
                        icon: Icon(
                          CupertinoIcons.lock_open,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue[100],
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: Offset(0.2, 0.2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "CREATE",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Alredy have an account?",
                      style:
                      TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      child: Text(
                        "Login here",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, LoginPage.id);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )

    );
  }
}
