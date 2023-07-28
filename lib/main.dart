import 'package:flutter/material.dart';
import 'package:it_momo_wala/ui/splash_screen.dart';
import 'package:it_momo_wala/utils/default_colors.dart';

import 'ui/auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: DefaultColor.delault_color),
      ),
      home:  SplashScreen(),
    );
  }
}
