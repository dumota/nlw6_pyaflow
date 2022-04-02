import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';


// essa auth controller ta na pasta shared porque ela pode ser compartilhada com o outros
// aqui estamos autenticando se o usuario esta logado e ainda setando os dados do usuario em uma variavel

class AuthController{
  var _isAuthenticated = false;
  var _user;

  get user => _user;

  void setUser(BuildContext context, var user){

    if(user != null){
      _user = user;
      _isAuthenticated = true;
      Navigator.pushReplacementNamed(context, "/home");
    }else{
      _isAuthenticated = false;
      Navigator.pushReplacementNamed(context, "/login");
    }
  }

}