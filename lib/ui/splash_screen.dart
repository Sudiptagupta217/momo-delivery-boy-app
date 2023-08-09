import 'dart:async';

import 'package:flutter/material.dart';
import 'package:it_momo_wala/ui/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();


}

class _SplashScreenState extends State<SplashScreen> {



  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
           () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()))
   );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff2c55),
        body: Center(
          child: Image.asset("assets/images/logo.jpeg"),
        ),
    );
  }
}
