import 'dart:convert';

import 'package:pdp_shared_preference/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefServices{

  static StoreUser (User user)async{
    SharedPreferences preferences =  await SharedPreferences.getInstance();
    String strUser = jsonEncode(user);
    preferences.setString("user",strUser);
  }

static Future<User> loadUser() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String strUser = preferences.getString("user");
    if(strUser == null || strUser.isEmpty){
      return null;
    }
    Map map = jsonDecode(strUser);
    return User.fromJson(map);
}

  static Future<bool> removeUser() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove("user");
  }

}