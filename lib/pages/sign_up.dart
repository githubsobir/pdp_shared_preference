import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pdp_shared_preference/model/user_model.dart';
import 'package:pdp_shared_preference/pages/login_page.dart';
import 'package:pdp_shared_preference/services/pref_services.dart';

class SignUp extends StatefulWidget {
  static final String id = "GignUp";

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void createUser() {
    setState(() {

      String nameCon = nameController.text.toString().trim();
      String emailCon = emailController.text.toString().trim();
      String phoneCon = phoneController.text.toString().trim();
      String passwordCon = passwordController.text.toString().trim();
      String confirmPas = confirmPasswordController.text.toString().trim();


        if (passwordCon == confirmPas) {
          User user = new User.named(
              name: nameCon,
              email: emailCon,
              phone: phoneCon,
              password: passwordCon);
          PrefServices.storeUser(user);
          EasyLoading.showSuccess("Ro'yxatdan o'tdingiz");
        } else {
      EasyLoading.showError("Qayat urinib ko'ring");
        }
    });
  }


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
                radius: 1 / 2,
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
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 65,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
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
                        controller: nameController,
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
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
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
                        controller: emailController,
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
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
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
                        controller: phoneController,
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
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
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
                        controller: passwordController,
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
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
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
                        controller: confirmPasswordController,
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
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 2,
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
                    child: FlatButton(
                      onPressed: (){
                        createUser();

                      },
                      child: Text("Create"),
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
                        style: TextStyle(color: Colors.grey, fontSize: 14),
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
                          Navigator.pushReplacementNamed(context, LoginPage.id);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
