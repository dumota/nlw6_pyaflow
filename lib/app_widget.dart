import 'package:flutter/material.dart';
import 'package:payflow/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:payflow/modules/login/login_page.dart';

import 'modules/home/home_page.dart';
import 'modules/splash/splash_page.dart';
import 'shared/themes/app_colors.dart';


//aqui é tipo a app do react


class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: AppColors.primary
      ),
      initialRoute: "/splash",
      routes:{
        "/splash": (context)=> SplashPage(),
        "/home": (context)=> HomePage(),
        "/login": (context)=> LoginPage(),
        "/barcode-scanner": (context) => BarcodeScannerFace(),
      } 
        
      ,
    );
  }
}