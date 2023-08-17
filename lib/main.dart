import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:it_momo_wala/ui/menu_screen.dart';
import 'package:it_momo_wala/ui/splash_screen.dart';
import 'package:it_momo_wala/utils/default_colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: DefaultColor.delault_color, // Replace with your desired color
    ));
     //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]); // hide status bar
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(),
    //  home:  SplashScreen(),
      home:  MenuScreen(),
    );
  }
}
