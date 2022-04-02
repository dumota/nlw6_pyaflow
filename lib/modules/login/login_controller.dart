

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/shared/auth/auth_controller.dart';
import 'package:payflow/shared/models/user_model.dart';

class LoginController {
  final authController = AuthController();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final responde = await _googleSignIn.signIn();
      final user = UserModel(
        name: responde!.displayName!,
        photoURL: responde.photoUrl,
      );
      authController.setUser(context, user);
      print(responde);
    } catch (error) {
       authController.setUser(context, null);
      print(error);
    }
  }
}
