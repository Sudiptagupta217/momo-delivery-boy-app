import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:it_momo_wala/utils/default_colors.dart';

import '../widgets/buttom_manu.dart';

class SellScreen extends StatefulWidget {
  const SellScreen({super.key});

  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  int selectedIndex = 1;
  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black, // Replace with your desired color
    ));
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text("sell page",style: TextStyle(fontSize: 120),),

          ],
        ),
      ),
    );
  }
}
