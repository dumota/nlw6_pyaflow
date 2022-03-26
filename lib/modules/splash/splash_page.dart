import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      //stack é um conceito de por em vima do outro , empilhar camadas
      body: Stack(
        children: [
          Center(child: Image.asset(AppImages.union)) ,
          Center(child: Image.asset(AppImages.logoFull)) 
        ],
      ),
    );
  }
}