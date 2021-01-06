import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pdp_shared_preference/pages/login_page.dart';
import 'package:pdp_shared_preference/pages/page4.dart';
import 'package:pdp_shared_preference/pages/sign_up.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.id:(context) => LoginPage(),
        SignUp.id:(context) => SignUp(),
        Page4.id:(context) => Page4(),
      },
    );
  }
}
