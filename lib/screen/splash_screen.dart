import 'dart:async';

import 'package:bobook/component/navbar.dart';
import 'package:bobook/constant/colors.dart';
import 'package:bobook/screen/dashboard.dart';
import 'package:bobook/screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.splashColor,
      body: SafeArea(
        child: Center(child: Image.asset('assets/logo_big.png', width: 310)),
      ),
    );
  }
}
