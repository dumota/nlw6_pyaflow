import 'package:flutter/material.dart';
import 'package:payflow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

// essa auth controller ta na pasta shared porque ela pode ser compartilhada com o outros
// aqui estamos autenticando se o usuario esta logado e ainda setando os dados do usuario em uma variavel

class AuthController {
  
  UserModel? _user;

  UserModel get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    if (user != null) {
      saveUser(user); 
      _user = user;
    
      Navigator.pushReplacementNamed(context, "/home");
    } else {
     
      Navigator.pushReplacementNamed(context, "/login");
    }
  }

  //function for save user with shared instance
  Future<void> saveUser(UserModel user) async {
    final instance = await SharedPreferences.getInstance();
    await instance.setString("user", user.toJson());
    return;
  }

  //get the actual user
  Future<void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 3));
    if (instance.containsKey("user")) {
      final json = instance.get("user") as String;
      setUser(context, UserModel.fromJson(json));
      return;
    } else {
      setUser(context, null);
    }
  }
}
